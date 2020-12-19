$ErrorActionPreference = 'Stop'

$packageName= 'xournalpp'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName  = $packageName
  unzipLocation = $toolsDir
  url          = 'https://github.com/xournalpp/xournalpp/releases/download/1.0.20/xournalpp-1.0.20-windows.zip'
  checksum     = 'c75690c02804cd00f8e11832600e7468a525b793cbccf6f7d68cd80e923eb02e'
  checksumType = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$ErrorActionPreference = 'Stop'

$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'

$file = $toolsDir+'\xournalpp-1.0.20-windows.exe'
 
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$file" "$checksum" "$checksumType"
