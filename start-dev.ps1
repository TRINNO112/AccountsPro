# Set local Node.js and npm path
$nodeDir = "C:\Users\Amit Pathak\Documents\node-v22.17.0-win-x64\node-v22.17.0-win-x64"
$env:PATH = "$nodeDir;$nodeDir\node_modules\npm\bin;$env:PATH"

# Now node and npm should work locally
node -v
npm -v

# Run your dev server
npm run dev
# If you want to run a specific script, you can uncomment the line below
