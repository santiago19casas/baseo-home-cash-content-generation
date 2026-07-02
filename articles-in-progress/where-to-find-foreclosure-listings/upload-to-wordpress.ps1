<#
  upload-to-wordpress.ps1
  Sube el artículo "Where to Find Foreclosure Listings in 2026" al WordPress de BASEO
  (cms.thebaseo.com) vía la REST API, como BORRADOR.

  Autenticación: WordPress Application Password (Usuarios > Perfil > Application Passwords).
  NO uses tu contraseña normal de login.

  Uso mínimo:
    .\upload-to-wordpress.ps1 -Username "eddie" -AppPassword "xxxx xxxx xxxx xxxx xxxx xxxx"

  Uso completo:
    .\upload-to-wordpress.ps1 -SiteUrl "https://cms.thebaseo.com" -Username "eddie" `
        -AppPassword "xxxx xxxx xxxx xxxx xxxx xxxx" -Status draft
#>

[CmdletBinding()]
param(
    [string]$SiteUrl        = "https://cms.thebaseo.com",
    [Parameter(Mandatory=$true)][string]$Username,
    [Parameter(Mandatory=$true)][string]$AppPassword,

    # Archivo HTML a subir (vacío = se resuelve abajo junto al script o en la carpeta actual)
    [string]$HtmlPath       = "",

    # Datos del post
    [string]$Title          = "Where to Find Foreclosure Listings in 2026",
    [string]$Slug           = "where-to-find-foreclosure-listings",
    [ValidateSet("draft","publish","pending","private")]
    [string]$Status         = "draft",

    # SEO (Yoast y Rank Math). Se envían ambos; el que no aplique se ignora.
    [string]$MetaTitle       = "Where to Find Foreclosure Listings in 2026 (Free & Paid)",
    [string]$MetaDescription = "The best places to find foreclosure listings in 2026, free and paid: HUD, HomePath, Zillow, Auction.com, and the county records most buyers skip.",

    # Opcionales
    [int]$CategoryId        = 0,   # 0 = ninguna
    [int]$FeaturedMediaId   = 0    # 0 = ninguna
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# --- Resolver ruta del HTML si no se pasó ---
if ([string]::IsNullOrWhiteSpace($HtmlPath)) {
    $baseDir  = if ($PSScriptRoot) { $PSScriptRoot } else { (Get-Location).Path }
    $HtmlPath = Join-Path $baseDir "article.html"
}

# --- Validaciones ---
if (-not (Test-Path $HtmlPath)) {
    throw "No encuentro el HTML en: $HtmlPath"
}
$content = Get-Content -Path $HtmlPath -Raw -Encoding UTF8

# Aviso si quedan pendientes de publicación (placeholder de CTA / imágenes)
if ($content -match "CLIENT_OFFER_URL") {
    Write-Warning "El contenido aún tiene el placeholder {{CLIENT_OFFER_URL}} en la CTA. Reemplázalo antes de publicar."
}
if ($content -match "PROMPT FOR CHATGPT IMAGE GENERATION") {
    Write-Warning "Quedan bloques de imagen sin generar. Se subirán como cajas editables en el borrador para que generes y reemplaces las imágenes."
}

# --- Autenticación Basic (Application Password) ---
$pair    = "{0}:{1}" -f $Username, $AppPassword
$bytes   = [Text.Encoding]::UTF8.GetBytes($pair)
$b64     = [Convert]::ToBase64String($bytes)
$headers = @{
    Authorization  = "Basic $b64"
    "Content-Type" = "application/json; charset=utf-8"
}

# --- Cuerpo del post ---
$postBody = [ordered]@{
    title   = $Title
    slug    = $Slug
    status  = $Status
    content = $content
    excerpt = $MetaDescription
    meta    = [ordered]@{
        # Yoast SEO
        "_yoast_wpseo_title"    = $MetaTitle
        "_yoast_wpseo_metadesc" = $MetaDescription
        # Rank Math
        "rank_math_title"       = $MetaTitle
        "rank_math_description" = $MetaDescription
    }
}
if ($CategoryId -gt 0)      { $postBody["categories"]     = @($CategoryId) }
if ($FeaturedMediaId -gt 0) { $postBody["featured_media"] = $FeaturedMediaId }

$json     = ($postBody | ConvertTo-Json -Depth 6)
$jsonUtf8 = [Text.Encoding]::UTF8.GetBytes($json)   # fuerza UTF-8 (acentos, comillas)
$endpoint = "$($SiteUrl.TrimEnd('/'))/wp-json/wp/v2/posts"

Write-Host "Subiendo a $endpoint como '$Status'..." -ForegroundColor Cyan

try {
    $resp = Invoke-RestMethod -Uri $endpoint -Method Post -Headers $headers -Body $jsonUtf8
}
catch {
    Write-Host "ERROR al subir el post." -ForegroundColor Red
    if ($_.Exception.Response) {
        $reader = New-Object IO.StreamReader($_.Exception.Response.GetResponseStream())
        Write-Host $reader.ReadToEnd() -ForegroundColor Red
    } else {
        Write-Host $_.Exception.Message -ForegroundColor Red
    }
    throw
}

Write-Host ""
Write-Host "OK. Post creado." -ForegroundColor Green
Write-Host ("  ID:       {0}" -f $resp.id)
Write-Host ("  Estado:   {0}" -f $resp.status)
Write-Host ("  Slug:     {0}" -f $resp.slug)
Write-Host ("  Editar:   {0}/wp-admin/post.php?post={1}&action=edit" -f $SiteUrl.TrimEnd('/'), $resp.id)
if ($resp.link) { Write-Host ("  Enlace:   {0}" -f $resp.link) }
Write-Host ""
Write-Host "Pendiente antes de publicar: generar las 2 imagenes (bloques PROMPT) y reemplazar {{CLIENT_OFFER_URL}} por el formulario de oferta del cliente." -ForegroundColor Yellow
