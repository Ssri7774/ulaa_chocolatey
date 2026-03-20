$ErrorActionPreference = 'Stop'
$packageName = 'ulaa'
$url = 'https://downloads.zohocdn.com/ulaa-browser/release/win/Ulaa-Online-Installer-v3.0.6.msi'
$checksum = 'E043FA5C270E564D239DFB4F1CF389E6AB5DE2FE7E7D5EA16F309B88A33AA287'
$checksumType = 'sha256'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'MSI'
  url            = $url
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0, 3010, 1641)
  checksum       = $checksum
  checksumType   = $checksumType
}

Install-ChocolateyPackage @packageArgs


