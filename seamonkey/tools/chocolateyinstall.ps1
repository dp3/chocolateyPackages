$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://download.mozilla.org/?product=seamonkey-2.49.4'
$checksum = '9a7822a019eb89c71a912c5ca5a08ce9dea9fc536a12c9ae861f528e5a6409c2'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
