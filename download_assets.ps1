# PowerShell script to download assets (CSS, JS, images) from the Hypefy website
# This will help create a more complete mirror

$baseUrl = "https://hypefy.webflow.io"
$cdnBase = "https://cdn.prod.website-files.com/670e6d5ddcec8bb7c56d8133"

# Create asset directories
$assetDirs = @("css", "js", "images", "fonts")
foreach ($dir in $assetDirs) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force
    }
}

Write-Host "Starting download of website assets..." -ForegroundColor Green

# Download main CSS file
try {
    $cssUrl = "$cdnBase/css/hypefy.webflow.2f050b66f.css"
    Write-Host "Downloading CSS: $cssUrl" -ForegroundColor Yellow
    Invoke-WebRequest -Uri $cssUrl -OutFile "css/hypefy.webflow.css"
    Write-Host "Successfully downloaded CSS" -ForegroundColor Green
}
catch {
    Write-Host "Failed to download CSS - $($_.Exception.Message)" -ForegroundColor Red
}

# Download favicon and webclip
try {
    $faviconUrl = "$cdnBase/6723eea4114b8de883685be2_favicon.svg"
    Write-Host "Downloading favicon..." -ForegroundColor Yellow
    Invoke-WebRequest -Uri $faviconUrl -OutFile "images/favicon.svg"
    Write-Host "Successfully downloaded favicon" -ForegroundColor Green
}
catch {
    Write-Host "Failed to download favicon - $($_.Exception.Message)" -ForegroundColor Red
}

try {
    $webclipUrl = "$cdnBase/6723eea97d1d61507af7fa69_webclip.svg"
    Write-Host "Downloading webclip..." -ForegroundColor Yellow
    Invoke-WebRequest -Uri $webclipUrl -OutFile "images/webclip.svg"
    Write-Host "Successfully downloaded webclip" -ForegroundColor Green
}
catch {
    Write-Host "Failed to download webclip - $($_.Exception.Message)" -ForegroundColor Red
}

# Download logo files
try {
    $logoUrl = "$cdnBase/6723ef697e110ad3d12ae6ca_logo.svg"
    Write-Host "Downloading logo..." -ForegroundColor Yellow
    Invoke-WebRequest -Uri $logoUrl -OutFile "images/logo.svg"
    Write-Host "Successfully downloaded logo" -ForegroundColor Green
}
catch {
    Write-Host "Failed to download logo - $($_.Exception.Message)" -ForegroundColor Red
}

try {
    $footerLogoUrl = "$cdnBase/6723eee341c4c31033bd5342_footer-logo.svg"
    Write-Host "Downloading footer logo..." -ForegroundColor Yellow
    Invoke-WebRequest -Uri $footerLogoUrl -OutFile "images/footer-logo.svg"
    Write-Host "Successfully downloaded footer logo" -ForegroundColor Green
}
catch {
    Write-Host "Failed to download footer logo - $($_.Exception.Message)" -ForegroundColor Red
}

# Download bag icon
try {
    $bagIconUrl = "$cdnBase/670e7ad3a39db98b8c4f0549_bag-icon%201.svg"
    Write-Host "Downloading bag icon..." -ForegroundColor Yellow
    Invoke-WebRequest -Uri $bagIconUrl -OutFile "images/bag-icon.svg"
    Write-Host "Successfully downloaded bag icon" -ForegroundColor Green
}
catch {
    Write-Host "Failed to download bag icon - $($_.Exception.Message)" -ForegroundColor Red
}

# Download open graph image
try {
    $ogImageUrl = "$cdnBase/67242aefddc70d3f3fee0aa7_open-graph-image.jpg"
    Write-Host "Downloading open graph image..." -ForegroundColor Yellow
    Invoke-WebRequest -Uri $ogImageUrl -OutFile "images/open-graph-image.jpg"
    Write-Host "Successfully downloaded open graph image" -ForegroundColor Green
}
catch {
    Write-Host "Failed to download open graph image - $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "Asset download complete!" -ForegroundColor Green
Write-Host "Assets downloaded to css/, js/, images/, and fonts/ directories." -ForegroundColor Cyan
