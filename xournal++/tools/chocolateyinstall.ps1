$ErrorActionPreference = 'Stop'

$packageName= 'xournalpp'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName  = $packageName
  unzipLocation = $toolsDir
  url          = 'https://github.com/xournalpp/xournalpp/releases/download/v1.2.5/xournalpp-1.2.5-windows-setup-x86_64.exe'
  checksum     = '386FFE9CE5A6D8D6CF693FE0CA179248C307FC748F02C195C86F844CFA45F567'
  checksumType = 'sha256'
  FileType     = 'exe'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
}
$ErrorActionPreference = 'Stop'


 
Install-ChocolateyPackage @packageArgs
