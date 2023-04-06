$ErrorActionPreference = 'Stop'

$packageName= 'xournalpp'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName  = $packageName
  unzipLocation = $toolsDir
  url          = 'https://github.com/xournalpp/xournalpp/releases/download/v1.1.3/xournalpp-1.1.3-windows.zip'
  checksum     = '79cc8d60fd11ef0b68d014341d103910ab910f05ca290a709ef0e2dabd011d8d'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'

$file = $toolsDir+'\xournalpp-1.1.3-windows.exe'
 
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$file" "$checksum" "$checksumType"
