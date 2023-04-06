$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.mozilla.org/pub/seamonkey/releases/2.53.16/win32/en-US/seamonkey-2.53.16.en-US.win32.installer.exe'
$checksum ='74b59d6b678035820cb7ee15d7ea549130111a7290b7e83e09d1d20db3a6edb7'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
