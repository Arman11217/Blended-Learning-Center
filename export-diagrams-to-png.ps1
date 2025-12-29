# PBLC Diagram PNG Export Script
# This script exports Mermaid diagrams to PNG format

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   PBLC Diagram PNG Exporter" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Node.js is installed
Write-Host "Checking Node.js installation..." -ForegroundColor Yellow
$nodeInstalled = Get-Command node -ErrorAction SilentlyContinue
if (-not $nodeInstalled) {
    Write-Host "ERROR: Node.js is not installed!" -ForegroundColor Red
    Write-Host "Please install Node.js from: https://nodejs.org/" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Alternative methods:" -ForegroundColor Cyan
    Write-Host "1. Use VS Code preview + screenshot (Win+Shift+S)" -ForegroundColor White
    Write-Host "2. Use online editor: https://mermaid.live/" -ForegroundColor White
    Write-Host "3. Open DIAGRAMS.md and follow 'How to Export' section" -ForegroundColor White
    exit 1
}
Write-Host "✓ Node.js found: $(node --version)" -ForegroundColor Green

# Check if Mermaid CLI is installed
Write-Host "Checking Mermaid CLI..." -ForegroundColor Yellow
$mmdcInstalled = Get-Command mmdc -ErrorAction SilentlyContinue
if (-not $mmdcInstalled) {
    Write-Host "Mermaid CLI not found. Installing..." -ForegroundColor Yellow
    Write-Host "This may take a few minutes..." -ForegroundColor Cyan
    npm install -g @mermaid-js/mermaid-cli
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: Failed to install Mermaid CLI" -ForegroundColor Red
        exit 1
    }
    Write-Host "✓ Mermaid CLI installed successfully" -ForegroundColor Green
} else {
    Write-Host "✓ Mermaid CLI found" -ForegroundColor Green
}

# Create output directory
Write-Host ""
Write-Host "Creating output directory..." -ForegroundColor Yellow
$outputDir = "diagrams-export"
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
    Write-Host "✓ Created: $outputDir/" -ForegroundColor Green
} else {
    Write-Host "✓ Directory exists: $outputDir/" -ForegroundColor Green
}

# Export Class Diagram
Write-Host ""
Write-Host "Exporting Class Diagram..." -ForegroundColor Yellow
if (Test-Path "docs\class-diagram.md") {
    mmdc -i "docs\class-diagram.md" -o "$outputDir\class-diagram.png" -b transparent
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ Class Diagram exported: $outputDir\class-diagram.png" -ForegroundColor Green
    } else {
        Write-Host "✗ Failed to export Class Diagram" -ForegroundColor Red
    }
} else {
    Write-Host "✗ File not found: docs\class-diagram.md" -ForegroundColor Red
}

# Export ER Diagram
Write-Host ""
Write-Host "Exporting ER Diagram..." -ForegroundColor Yellow
if (Test-Path "docs\er-diagram.md") {
    mmdc -i "docs\er-diagram.md" -o "$outputDir\er-diagram.png" -b transparent
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ ER Diagram exported: $outputDir\er-diagram.png" -ForegroundColor Green
    } else {
        Write-Host "✗ Failed to export ER Diagram" -ForegroundColor Red
    }
} else {
    Write-Host "✗ File not found: docs\er-diagram.md" -ForegroundColor Red
}

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Export Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Exported files are in: $outputDir\" -ForegroundColor White
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Check the PNG files in $outputDir\ folder" -ForegroundColor White
Write-Host "2. Use these for printing or documentation" -ForegroundColor White
Write-Host "3. To convert to PDF, open PNG in browser and Save as PDF" -ForegroundColor White
Write-Host ""
