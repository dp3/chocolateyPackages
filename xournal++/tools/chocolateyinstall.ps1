$ErrorActionPreference = 'Stop'

$packageName= 'xournalpp'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$fileLocation = Join-Path $toolsDir 'xournalpp-1.0.18-windows.zip'


$packageArgs = @{
  packageName  = $packageName
  unzipLocation = $toolsDir
  url          = 'https://github.com/xournalpp/xournalpp/releases/download/1.0.18/xournalpp-1.0.18-windows.zip'
  checksum     = 'af14a523fb160a0d1c3fecc9025060ba897b2fab93ddcff5c9bfcbb48951678b'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$file = 'C:\ProgramData\chocolatey\lib\xournalpp\tools\xournalpp-1.0.18-windows.exe'         
  
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$file" "$checksum" "$checksumType"
