$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.mozilla.org/pub/seamonkey/releases/2.53.13/win32/en-US/seamonkey-2.53.13.en-US.win32.installer.exe'
$checksum ='af77de7c66fc6878cba77738bdfe03f80f4c753a428f373b9a1bae13c5fa125d`'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
