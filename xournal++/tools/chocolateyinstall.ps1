$ErrorActionPreference = 'Stop'

$packageName= 'xournalpp'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName  = $packageName
  unzipLocation = $toolsDir
  url          = 'https://github.com/xournalpp/xournalpp/releases/download/1.0.19/xournalpp-1.0.19-windows.zip'
  checksum     = '5c7dca35cf3fbbeebf93b55e4239e05822342457ab06716b14bca8bb0f48c3a9'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'

$file = $toolsDir+'\xournalpp-1.0.18-windows.exe'
 
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$file" "$checksum" "$checksumType"
