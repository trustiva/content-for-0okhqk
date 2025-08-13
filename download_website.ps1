# PowerShell script to download Hypefy website pages
# Since wget is not available on this Windows system, we'll use Invoke-WebRequest

$baseUrl = "https://hypefy.webflow.io"
$pages = @(
    "/",
    "/about",
    "/home-02", 
    "/services",
    "/home-03",
    "/contact",
    "/case-studies/case-studies",
    "/pricing",
    "/case-studies/case-studies-02",
    "/blog/blog",
    "/case-studies/case-studies-03",
    "/blog/blog-02",
    "/blog/blog-03",
    "/template-info/style-guide",
    "/template-info/licenses",
    "/template-info/changelog"
)

# Create directories for organization
$directories = @(
    "case-studies",
    "blog", 
    "template-info"
)

foreach ($dir in $directories) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force
    }
}

Write-Host "Starting download of Hypefy website..." -ForegroundColor Green

foreach ($page in $pages) {
    $fileName = $page.TrimStart('/')
    if ($fileName -eq "") {
        $fileName = "index"
    }
    
    # Handle nested paths
    if ($page -like "*/case-studies/*") {
        $fileName = "case-studies\" + ($page -split "/" | Select-Object -Last 1)
    }
    elseif ($page -like "*/blog/*") {
        $fileName = "blog\" + ($page -split "/" | Select-Object -Last 1)
    }
    elseif ($page -like "*/template-info/*") {
        $fileName = "template-info\" + ($page -split "/" | Select-Object -Last 1)
    }
    
    $fileName = $fileName + ".html"
    
    try {
        Write-Host "Downloading: $page -> $fileName" -ForegroundColor Yellow
        $response = Invoke-WebRequest -Uri "$baseUrl$page" -OutFile $fileName
        Write-Host "Successfully downloaded: $fileName" -ForegroundColor Green
    }
    catch {
        Write-Host "Failed to download $page - $($_.Exception.Message)" -ForegroundColor Red
    }
}

Write-Host "Download complete!" -ForegroundColor Green
Write-Host "Files downloaded to current directory and subdirectories." -ForegroundColor Cyan
