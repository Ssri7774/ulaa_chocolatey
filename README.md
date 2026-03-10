# Ulaa Browser Chocolatey Package

This repository contains the Chocolatey package for Ulaa Browser - a privacy-centric browser by Zoho Corporation.

## Automated Updates

This package is automatically updated via GitHub Actions:
- **Daily checks** for new Ulaa versions
- **Automatic package building** and pushing to Chocolatey
- **Manual trigger** available for immediate updates

## Building the Package

1. Install Chocolatey if not already installed
2. Calculate the checksum:
   ```powershell
   $url = 'https://downloads.zohocdn.com/ulaa-browser/release/win/Ulaa-Online-Installer-v3.0.4.msi'
   $file = Join-Path $env:TEMP 'ulaa-installer.msi'
   Invoke-WebRequest -Uri $url -OutFile $file
   Get-FileHash $file -Algorithm SHA256 | Select-Object -ExpandProperty Hash
   ```
3. Update the checksum in `tools/chocolateyinstall.ps1`
4. Build the package:
   ```
   choco pack
   ```
5. Test locally:
   ```
   choco install ulaa -s . -y
   ```

## Publishing to Chocolatey Community Repository

1. Create an account at https://community.chocolatey.org/
2. Get your API key from your account settings
3. Push the package:
   ```
   choco push ulaa.3.0.4.nupkg --source https://push.chocolatey.org/ --api-key YOUR_API_KEY
   ```

## Updating the Package

### Automatic (Recommended)
GitHub Actions automatically checks daily and updates the package when a new version is detected.

### Manual Update via GitHub
1. Go to Actions tab in your repository
2. Select "Manual Package Update" workflow
3. Click "Run workflow"
4. Enter the new version number
5. The workflow will handle the rest

### Manual Update Locally
1. Check for new version at https://ulaa.com/
2. Update version in `ulaa.nuspec`
3. Update URL and checksum in `tools/chocolateyinstall.ps1`
4. Rebuild and test
5. Push updated package

## Setup GitHub Actions

1. Add your Chocolatey API key as a repository secret:
   - Go to Settings > Secrets and variables > Actions
   - Create new secret: `CHOCO_API_KEY`
   - Paste your API key
2. Workflows will run automatically

## Notes

- The package uses the online MSI installer from Zoho's CDN
- Update the `iconUrl` in nuspec with actual icon location
- Update `packageSourceUrl` with your GitHub repository URL
- Update `owners` field with your Chocolatey username
