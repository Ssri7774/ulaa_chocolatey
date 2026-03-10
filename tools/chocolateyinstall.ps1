$ErrorActionPreference = 'Stop'
$packageName = 'ulaa'
$url = 'https://downloads.zohocdn.com/ulaa-browser/release/win/Ulaa-Online-Installer-v3.0.4.msi'
$checksum = 'CB054432FC817E76F41BF5B2AD257CD0E987B2D54935A1253111DC908615BE79'
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
