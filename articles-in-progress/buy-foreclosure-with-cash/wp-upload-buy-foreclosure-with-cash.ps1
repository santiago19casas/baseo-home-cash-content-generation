#Requires -Version 5.1
<#
  BASEO WordPress uploader (Windows / PowerShell).
  Creates a DRAFT post on cms.thebaseo.com from wp-payload-buy-foreclosure-with-cash.json.
  Credentials are read from .env at the project root; nothing is hardcoded.
  Run from anywhere:
    powershell -ExecutionPolicy Bypass -File "articles-in-progress\buy-foreclosure-with-cash\wp-upload-buy-foreclosure-with-cash.ps1"
#>
$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Self-locate: this script lives in articles-in-progress\<slug>\, project root is two levels up.
$ScriptDir   = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = (Resolve-Path (Join-Path $ScriptDir "..\..")).Path
$PayloadFile = Join-Path $ScriptDir "wp-payload-buy-foreclosure-with-cash.json"
$EnvFile     = Join-Path $ProjectRoot ".env"

# 1. Validate .env
if (-not (Test-Path $EnvFile)) {
  Write-Host "X No .env found at $EnvFile" -ForegroundColor Red
  Write-Host "  Create it with WP_URL, WP_USER, WP_APP_PASSWORD (App Password in quotes)."
  exit 1
}
if (-not (Test-Path $PayloadFile)) {
  Write-Host "X Payload not found: $PayloadFile" -ForegroundColor Red
  exit 1
}

# 2. Parse .env (KEY=VALUE, ignores blanks/# comments, strips surrounding quotes)
$cfg = @{}
foreach ($line in Get-Content $EnvFile) {
  $t = $line.Trim()
  if ($t -eq "" -or $t.StartsWith("#")) { continue }
  $i = $t.IndexOf("=")
  if ($i -lt 1) { continue }
  $k = $t.Substring(0, $i).Trim()
  $v = $t.Substring($i + 1).Trim()
  if (($v.StartsWith('"') -and $v.EndsWith('"')) -or ($v.StartsWith("'") -and $v.EndsWith("'"))) {
    $v = $v.Substring(1, $v.Length - 2)
  }
  $cfg[$k] = $v
}

# 3. Validate required vars
foreach ($k in @("WP_URL","WP_USER","WP_APP_PASSWORD")) {
  if (-not $cfg.ContainsKey($k) -or [string]::IsNullOrWhiteSpace($cfg[$k])) {
    Write-Host "X $k not set in .env" -ForegroundColor Red
    exit 1
  }
}

$WpUrl    = $cfg["WP_URL"].TrimEnd("/")
$Endpoint = "$WpUrl/wp-json/wp/v2/posts"
$pair     = "$($cfg['WP_USER']):$($cfg['WP_APP_PASSWORD'])"
$authB64  = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($pair))
$headers  = @{ Authorization = "Basic $authB64" }

# 4. POST the payload bytes (UTF-8 preserved)
$bytes = [IO.File]::ReadAllBytes($PayloadFile)
Write-Host "-> Creating draft at $Endpoint"
try {
  $resp = Invoke-RestMethod -Uri $Endpoint -Method Post -Headers $headers `
            -ContentType "application/json; charset=utf-8" -Body $bytes
  Write-Host "OK Draft created. Post ID: $($resp.id)" -ForegroundColor Green
  Write-Host "   Edit: $WpUrl/wp-admin/post.php?post=$($resp.id)&action=edit"
  Write-Host "   Status: draft (publish manually in WP when ready)."
}
catch {
  $status = $null
  if ($_.Exception.Response) { try { $status = [int]$_.Exception.Response.StatusCode } catch {} }
  $detail = $null
  if ($_.ErrorDetails -and $_.ErrorDetails.Message) { $detail = $_.ErrorDetails.Message }
  elseif ($_.Exception.Response) {
    try {
      $sr = New-Object IO.StreamReader($_.Exception.Response.GetResponseStream())
      $detail = $sr.ReadToEnd()
    } catch {}
  }
  switch ($status) {
    401 { Write-Host "X 401 Unauthorized. WP_USER or WP_APP_PASSWORD is wrong." -ForegroundColor Red
          Write-Host "  App Password format is 'ABCD 1234 EFGH 5678' and MUST be quoted in .env." }
    403 { Write-Host "X 403 Forbidden. User lacks permission, or a security plugin/firewall blocks the REST API." -ForegroundColor Red }
    404 { Write-Host "X 404 Not Found. Check WP_URL (expected $Endpoint)." -ForegroundColor Red }
    default { Write-Host "X Upload failed (HTTP $status)." -ForegroundColor Red
              if ($detail) { Write-Host $detail } else { Write-Host $_.Exception.Message } }
  }
  exit 1
}
