$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.seamonkey-project.org/releases/2.53.21/win32/en-US/seamonkey-2.53.21.en-US.win32.installer.exe'
$checksum ='4fc61e90227cfca56d300b29c1b4eb339099b8633598aeafcad28a6a9a516bc2'
$checksumType = 'sha256'
#Get-ChecksumValid -File $fileFullPath -CheckSum $checksum -ChecksumType $checksumType
Install-ChocolateyPackage "$packageName" -FileType "$fileType" -SilentArgs "$silentArgs" -Url "$url" -Checksum "$checksum" -ChecksumType "$checksumType"
