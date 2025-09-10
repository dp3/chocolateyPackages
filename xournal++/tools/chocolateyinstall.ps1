$ErrorActionPreference = 'Stop'

$packageName= 'xournalpp'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName  = $packageName
  unzipLocation = $toolsDir
  url = 'https://github.com/xournalpp/xournalpp/releases/download/v1.2.8/xournalpp-1.2.8-windows-setup-AMD64.exe'
  checksum     = '610278bf2f7f3a1da071c91825168a8240bdd5e2afb04851f38359bbf14278c9'
  checksumType = 'sha256'
  FileType     = 'exe'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
}
$ErrorActionPreference = 'Stop'


 
Install-ChocolateyPackage @packageArgs
