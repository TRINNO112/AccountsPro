# Set path to your portable Node.js
$NodeExe = "C:\Users\Amit Pathak\Documents\node-v22.17.0-win-x64\node.exe"
$NpmCmd = "C:\Users\Amit Pathak\Documents\node-v22.17.0-win-x64\npm.cmd"
$ViteJs = ".\node_modules\vite\bin\vite.js"

# Change to current script directory
Set-Location -Path $PSScriptRoot

# Patch environment
$env:Path = "C:\Users\Amit Pathak\Documents\node-v22.17.0-win-x64;$env:Path"
$env:NODE_ENV = "development"
Write-Host "Node.js environment patched."

# Install dependencies if missing
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..."
    & "$NpmCmd" install
} else {
    Write-Host "Dependencies already installed."
}

# Start Vite
Write-Host "Starting Vite Dev Server..."
& "$NodeExe" "$ViteJs"

