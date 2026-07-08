#requires -Version 5.1
<#
  BASEO - WordPress draft uploader (Windows / PowerShell)
  Creates a DRAFT post on cms.thebaseo.com via the WP REST API.
  Credentials are read from .env at the project root. Nothing is hardcoded.
  Re-running creates a NEW draft (this script never edits existing posts).
#>

$ErrorActionPreference = 'Stop'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# --- Self-locate: this script lives in articles-in-progress\<slug>\, root is two levels up
$ScriptDir   = $PSScriptRoot
$ProjectRoot = (Resolve-Path (Join-Path $ScriptDir '..\..')).Path
$PayloadFile = Join-Path $ScriptDir 'wp-payload-real-estate-keywords-for-ads.json'
$EnvFile     = Join-Path $ProjectRoot '.env'

# --- 1. Validate files
if (-not (Test-Path $EnvFile)) {
    Write-Host "[X] No .env found at $EnvFile" -ForegroundColor Red
    Write-Host "    Create it with WP_URL, WP_USER, WP_APP_PASSWORD."
    exit 1
}
if (-not (Test-Path $PayloadFile)) {
    Write-Host "[X] Payload not found: $PayloadFile" -ForegroundColor Red
    exit 1
}

# --- 2. Load .env (KEY=VALUE lines; strips surrounding quotes; keeps spaces in the value)
$EnvVars = @{}
foreach ($line in Get-Content $EnvFile) {
    $t = $line.Trim()
    if ($t -eq '' -or $t.StartsWith('#')) { continue }
    $i = $t.IndexOf('=')
    if ($i -lt 1) { continue }
    $k = $t.Substring(0, $i).Trim()
    $v = $t.Substring($i + 1).Trim()
    if (($v.StartsWith('"') -and $v.EndsWith('"')) -or ($v.StartsWith("'") -and $v.EndsWith("'"))) {
        $v = $v.Substring(1, $v.Length - 2)
    }
    $EnvVars[$k] = $v
}

$WP_URL          = $EnvVars['WP_URL']
$WP_USER         = $EnvVars['WP_USER']
$WP_APP_PASSWORD = $EnvVars['WP_APP_PASSWORD']

foreach ($pair in @(@('WP_URL', $WP_URL), @('WP_USER', $WP_USER), @('WP_APP_PASSWORD', $WP_APP_PASSWORD))) {
    if ([string]::IsNullOrWhiteSpace($pair[1])) {
        Write-Host "[X] $($pair[0]) not set in .env" -ForegroundColor Red
        exit 1
    }
}

$Endpoint = "$($WP_URL.TrimEnd('/'))/wp-json/wp/v2/posts"

# --- 3. Basic Auth header (App Password keeps its spaces)
$AuthBytes  = [Text.Encoding]::UTF8.GetBytes("$WP_USER`:$WP_APP_PASSWORD")
$AuthHeader = 'Basic ' + [Convert]::ToBase64String($AuthBytes)

# --- 4. POST the payload (raw UTF-8 bytes so en-dashes etc. survive)
$BodyBytes = [IO.File]::ReadAllBytes($PayloadFile)
Write-Host "-> Creating draft at $Endpoint" -ForegroundColor Cyan

try {
    $resp = Invoke-WebRequest -Uri $Endpoint -Method Post -Body $BodyBytes `
        -Headers @{ Authorization = $AuthHeader } `
        -ContentType 'application/json; charset=utf-8' `
        -UseBasicParsing

    $data   = $resp.Content | ConvertFrom-Json
    $postId = $data.id
    Write-Host "[OK] Draft created. Post ID: $postId" -ForegroundColor Green
    Write-Host "     Edit: $($WP_URL.TrimEnd('/'))/wp-admin/post.php?post=$postId&action=edit"
    Write-Host "     Status: draft (publish manually in WP when ready)."
}
catch {
    $code = $null
    if ($_.Exception.Response) { $code = [int]$_.Exception.Response.StatusCode }
    switch ($code) {
        401 { Write-Host "[X] 401 Unauthorized. WP_USER or WP_APP_PASSWORD is wrong. Keep the App Password quoted with its spaces in .env." -ForegroundColor Red }
        403 { Write-Host "[X] 403 Forbidden. The user lacks permission to create posts, or a security plugin/firewall is blocking the REST API." -ForegroundColor Red }
        404 { Write-Host "[X] 404 Not Found. Check WP_URL (expected $($WP_URL.TrimEnd('/'))/wp-json/wp/v2/posts)." -ForegroundColor Red }
        default {
            $suffix = ''
            if ($code) { $suffix = " (HTTP $code)" }
            Write-Host "[X] Upload failed$suffix." -ForegroundColor Red
            if ($_.Exception.Response) {
                try {
                    $sr = New-Object IO.StreamReader($_.Exception.Response.GetResponseStream())
                    Write-Host $sr.ReadToEnd()
                } catch {}
            } else {
                Write-Host $_.Exception.Message
            }
        }
    }
    exit 1
}
