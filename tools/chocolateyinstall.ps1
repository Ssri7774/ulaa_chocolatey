$ErrorActionPreference = 'Stop'
$packageName = 'ulaa'
$url = 'https://downloads.zohocdn.com/ulaa-browser/release/win/Ulaa-Online-Installer-v3.1.6.msi'
$checksum = '4240D361CA6D71AB7908077A5F6F71C6D25814ECD4EE8888A188B331D693264B'
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












