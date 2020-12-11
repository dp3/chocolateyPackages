$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.mozilla.org/pub/seamonkey/releases/2.53.5.1/win32/en-US/seamonkey-2.53.5.1.en-US.win32.installer.exe'
$checksum = '3f90f0b4a4a79d2f3a78f041897ac478b82eafeff4f4d746439161497cf4d8fd'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
