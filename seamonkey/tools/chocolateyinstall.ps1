$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.mozilla.org/pub/seamonkey/releases/2.53.3/win32/en-US/seamonkey-2.53.3.en-US.win32.installer.exe'
$checksum = 'f5a589a5d2349d0f93f4842fc8014a6883ebd78019382ba3f157883f2d478b7fs'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
