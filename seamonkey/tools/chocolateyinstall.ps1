$packageName = 'seamonkey'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://archive.mozilla.org/pub/seamonkey/releases/2.53.18/win32/en-US/seamonkey-2.53.18.en-US.win32.installer.exe'
$checksum ='3b6d8be0fd7d39b019cc9f5c8875595d22e70ef372a4900e73e2b5399f6da603'
$checksumType = 'sha256'
#Get-ChecksumValid -File $fileFullPath -CheckSum $checksum -ChecksumType $checksumType
Install-ChocolateyPackage "$packageName" -FileType "$fileType" -SilentArgs "$silentArgs" -Url "$url" -Checksum "$checksum" -ChecksumType "$checksumType"
