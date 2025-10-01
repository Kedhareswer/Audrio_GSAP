# Audira Next.js - Setup Verification Script
# Run this to verify everything is properly set up

Write-Host "🎧 Audira Next.js - Setup Verification" -ForegroundColor Cyan
Write-Host "======================================`n" -ForegroundColor Cyan

# Check Node.js
Write-Host "📦 Checking Node.js..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version
    Write-Host "  ✅ Node.js version: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "  ❌ Node.js not found! Install from https://nodejs.org" -ForegroundColor Red
    exit 1
}

# Check npm
Write-Host "`n📦 Checking npm..." -ForegroundColor Yellow
try {
    $npmVersion = npm --version
    Write-Host "  ✅ npm version: $npmVersion" -ForegroundColor Green
} catch {
    Write-Host "  ❌ npm not found!" -ForegroundColor Red
    exit 1
}

# Check required files
Write-Host "`n📄 Checking project files..." -ForegroundColor Yellow
$requiredFiles = @(
    "package.json",
    "next.config.js",
    "tsconfig.json",
    "tailwind.config.ts",
    "app/layout.tsx",
    "app/page.tsx",
    "app/globals.css",
    "components/Header.tsx",
    "components/Footer.tsx",
    "hooks/useGSAPAnimations.ts"
)

$allFilesExist = $true
foreach ($file in $requiredFiles) {
    if (Test-Path $file) {
        Write-Host "  ✅ $file" -ForegroundColor Green
    } else {
        Write-Host "  ❌ $file missing!" -ForegroundColor Red
        $allFilesExist = $false
    }
}

# Check images
Write-Host "`n🖼️  Checking images..." -ForegroundColor Yellow
$requiredImages = @(
    "public/images/logo.png",
    "public/images/brown.png",
    "public/images/green.png",
    "public/images/black.png",
    "public/images/img1.jpeg",
    "public/images/img2.jpeg",
    "public/images/img3.jpeg",
    "public/images/img4.jpg",
    "public/images/video.mp4"
)

$allImagesExist = $true
foreach ($image in $requiredImages) {
    if (Test-Path $image) {
        $size = (Get-Item $image).Length
        $sizeKB = [math]::Round($size / 1KB, 2)
        Write-Host "  ✅ $image ($sizeKB KB)" -ForegroundColor Green
    } else {
        Write-Host "  ❌ $image missing!" -ForegroundColor Red
        $allImagesExist = $false
    }
}

# Check node_modules
Write-Host "`n📦 Checking dependencies..." -ForegroundColor Yellow
if (Test-Path "node_modules") {
    Write-Host "  ✅ node_modules folder exists" -ForegroundColor Green
    
    # Check key packages
    $packages = @("next", "react", "react-dom", "gsap")
    foreach ($pkg in $packages) {
        if (Test-Path "node_modules/$pkg") {
            Write-Host "  ✅ $pkg installed" -ForegroundColor Green
        } else {
            Write-Host "  ⚠️  $pkg not found - run 'npm install'" -ForegroundColor Yellow
        }
    }
} else {
    Write-Host "  ⚠️  node_modules not found - run 'npm install'" -ForegroundColor Yellow
}

# Summary
Write-Host "`n" -NoNewline
Write-Host "================================" -ForegroundColor Cyan
Write-Host "📊 Summary" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan

if ($allFilesExist -and $allImagesExist) {
    Write-Host "✅ All files verified!" -ForegroundColor Green
    Write-Host "`n🚀 Ready to start! Run:" -ForegroundColor Green
    Write-Host "   npm run dev" -ForegroundColor White
    Write-Host "`n   Then open: http://localhost:3000" -ForegroundColor Cyan
} else {
    Write-Host "⚠️  Some files are missing. Please check the errors above." -ForegroundColor Yellow
}

Write-Host "`n📚 Documentation:" -ForegroundColor Cyan
Write-Host "   - README.md" -ForegroundColor White
Write-Host "   - SETUP_GUIDE.md" -ForegroundColor White
Write-Host "   - PROJECT_SUMMARY.md" -ForegroundColor White
Write-Host ""
