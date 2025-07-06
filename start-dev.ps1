# Set path to portable Node.js folder
$NodeFolder = "C:\Users\Amit Pathak\Documents\node-v22.17.0-win-x64\node-v22.17.0-win-x64"
$NPM = "$NodeFolder\npm.cmd"

# Move to project directory
Set-Location -Path $PSScriptRoot

# Set environment
$env:Path = "$NodeFolder;$env:Path"
$env:NODE_ENV = "development"
Write-Host "Node.js environment patched."

# Check and install dependencies
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..."
    & "$NPM" install
} else {
    Write-Host "Dependencies already installed."
}

# Start the Vite dev server
Write-Host "Starting Vite Dev Server..."
& ".\node_modules\.bin\vite.cmd"
