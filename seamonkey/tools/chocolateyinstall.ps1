$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.mozilla.org/pub/seamonkey/releases/2.53.9/win64/en-US/seamonkey-2.53.9.en-US.win64.installer.exe'
$checksum ='a79e4553298e779678d72603e46b164fe4027939c6189cf879b3c29f66b82d2c'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
