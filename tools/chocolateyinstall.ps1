$ErrorActionPreference = 'Stop'
$packageName = 'ulaa'
$url = 'https://downloads.zohocdn.com/ulaa-browser/release/win/Ulaa-Online-Installer-v3.3.9.msi'
$checksum = 'EFDCFB46BE6CF5202F33B5287B0F74E2DE948A2B4FB3E7226B84A99D522151F7'
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



































