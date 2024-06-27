$ErrorActionPreference = 'Stop'

$packageName= 'xournalpp'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName  = $packageName
  unzipLocation = $toolsDir
  url          = 'https://github.com/xournalpp/xournalpp/releases/download/v1.2.3/xournalpp-1.2.3-windows.zip'
  checksum     = 'dcb67d17489b84ebd95db6e20b379b95ea8b62cbdb3001ba40b4913816c6fd1c'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'

$file = $toolsDir+'\xournalpp-1.2.3-windows.exe'

 
Install-ChocolateyPackage "$packageName" -FileType "$fileType" -SilentArgs "$silentArgs" -File "$file" -Checksum "$checksum" -ChecksumType "$checksumType"
