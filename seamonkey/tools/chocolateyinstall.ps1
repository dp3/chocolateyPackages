$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.seamonkey-project.org/releases/2.53.20/win32/en-US/seamonkey-2.53.20.en-US.win32.installer.exe'
$checksum ='e36a96e3598c3637b770443c3f3350a524ce603c69a4e40e5c514b9113d2720e'
$checksumType = 'sha256'
#Get-ChecksumValid -File $fileFullPath -CheckSum $checksum -ChecksumType $checksumType
Install-ChocolateyPackage "$packageName" -FileType "$fileType" -SilentArgs "$silentArgs" -Url "$url" -Checksum "$checksum" -ChecksumType "$checksumType"
