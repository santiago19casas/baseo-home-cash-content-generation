#requires -Version 5.1
<#
  BASEO -> WordPress draft uploader (PowerShell / Windows)
  Crea el post como DRAFT en cms.thebaseo.com via REST API.
  Adaptado de la skill baseo-wp-upload (bash) a PowerShell.

  - No publica: status = "draft" (hardcodeado en el payload).
  - Credenciales SOLO desde .env en la raiz del proyecto (nunca en este archivo).
  - El .env esta en .gitignore.
#>

$ErrorActionPreference = "Stop"

# 1. Auto-localizar: este script vive en articles-in-progress\<slug>\ ; la raiz esta dos niveles arriba
$ScriptDir   = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = (Resolve-Path (Join-Path $ScriptDir "..\..")).Path
$PayloadFile = Join-Path $ScriptDir "wp-payload-google-ads-for-real-estate.json"
$EnvFile     = Join-Path $ProjectRoot ".env"

# 2. Validar .env
if (-not (Test-Path $EnvFile)) {
    Write-Host "[X] No se encontro .env en $EnvFile" -ForegroundColor Red
    Write-Host "    Crealo con WP_URL, WP_USER, WP_APP_PASSWORD."
    exit 1
}
if (-not (Test-Path $PayloadFile)) {
    Write-Host "[X] No se encontro el payload: $PayloadFile" -ForegroundColor Red
    exit 1
}

# 3. Cargar .env (KEY=VALUE, ignora comentarios y lineas vacias, quita comillas)
$envVars = @{}
foreach ($line in Get-Content $EnvFile) {
    $t = $line.Trim()
    if ($t -eq "" -or $t.StartsWith("#")) { continue }
    $idx = $t.IndexOf("=")
    if ($idx -lt 1) { continue }
    $key = $t.Substring(0, $idx).Trim()
    $val = $t.Substring($idx + 1).Trim()
    if ($val.Length -ge 2 -and (($val.StartsWith('"') -and $val.EndsWith('"')) -or ($val.StartsWith("'") -and $val.EndsWith("'")))) {
        $val = $val.Substring(1, $val.Length - 2)
    }
    $envVars[$key] = $val
}

$WP_URL          = $envVars["WP_URL"]
$WP_USER         = $envVars["WP_USER"]
$WP_APP_PASSWORD = $envVars["WP_APP_PASSWORD"]

if ([string]::IsNullOrWhiteSpace($WP_URL))          { Write-Host "[X] WP_URL no esta en .env" -ForegroundColor Red; exit 1 }
if ([string]::IsNullOrWhiteSpace($WP_USER))         { Write-Host "[X] WP_USER no esta en .env" -ForegroundColor Red; exit 1 }
if ([string]::IsNullOrWhiteSpace($WP_APP_PASSWORD)) { Write-Host "[X] WP_APP_PASSWORD no esta en .env" -ForegroundColor Red; exit 1 }

$Endpoint = ($WP_URL.TrimEnd("/")) + "/wp-json/wp/v2/posts"
Write-Host "-> Creando draft en $Endpoint"

# 4. Header de Basic Auth (la App Password lleva espacios; se usa tal cual, sin quitarselos)
$pair    = "{0}:{1}" -f $WP_USER, $WP_APP_PASSWORD
$basic   = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($pair))
$headers = @{ Authorization = "Basic $basic" }

# 5. Leer payload como UTF-8 (asi los acentos/comillas viajan bien)
$json  = Get-Content -Raw -Path $PayloadFile -Encoding UTF8
$bytes = [System.Text.Encoding]::UTF8.GetBytes($json)

# 6. POST + manejo de errores
try {
    $resp = Invoke-RestMethod -Uri $Endpoint -Method Post -Headers $headers `
        -Body $bytes -ContentType "application/json; charset=utf-8"

    $postId = $resp.id
    Write-Host "[OK] Draft creado. Post ID: $postId" -ForegroundColor Green
    Write-Host ("     Editar: {0}/wp-admin/post.php?post={1}&action=edit" -f $WP_URL.TrimEnd("/"), $postId)
    Write-Host "     Status: draft (publicalo manualmente en WP cuando este listo)."
}
catch {
    $code = $null
    if ($_.Exception.Response -ne $null) { $code = [int]$_.Exception.Response.StatusCode }
    switch ($code) {
        401 { Write-Host "[X] 401 No autorizado. WP_USER o WP_APP_PASSWORD incorrectos." -ForegroundColor Red
              Write-Host "    La App Password tiene formato 'ABCD 1234 EFGH 5678' y debe ir ENTRE COMILLAS en .env." }
        403 { Write-Host "[X] 403 Prohibido. El usuario no puede crear posts, o un plugin de seguridad bloquea la REST API." -ForegroundColor Red }
        404 { Write-Host "[X] 404 No encontrado. Revisa WP_URL (se espera $Endpoint)." -ForegroundColor Red }
        default { Write-Host "[X] Fallo el upload (HTTP $code)." -ForegroundColor Red
                  Write-Host $_.Exception.Message }
    }
    # Intentar mostrar el cuerpo de error de WP
    try {
        $stream = $_.Exception.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($stream)
        $errBody = $reader.ReadToEnd()
        if ($errBody) { Write-Host $errBody -ForegroundColor DarkYellow }
    } catch {}
    exit 1
}
