$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.mozilla.org/pub/seamonkey/releases/2.49.5/win64/en-US/seamonkey-2.49.5.installer.exe'
$checksum = 'e0cdf6e1fc8cd470aa19e8d791347cf7277fdcca5b8f42424110807a95e086d5'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
