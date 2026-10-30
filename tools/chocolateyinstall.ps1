$ErrorActionPreference = 'Stop'
$packageName = 'ulaa'
$url = 'https://downloads.zohocdn.com/ulaa-browser/release/win/Ulaa-Online-Installer-v3.5.1.msi'
$checksum = '8B2C5344F80856961F6A8F336F25031F73497E41B90ABCEC5479F00D2202DBD2'
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















































