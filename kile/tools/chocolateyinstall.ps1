$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = 'Kile'
  fileType = 'exe'
  silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
  url = 'https://sourceforge.net/projects/kile/files/unstable/kile-3.0b2/kile-2.9.92-2-windows-msvc2017_32-cl.exe'
  url64bit = 'https://sourceforge.net/projects/kile/files/unstable/kile-3.0b2/kile-2.9.92-2-windows-msvc2017_64-cl.exe'
  checksum = 'b8da347118f310251768e80de29339eaaaa2ba07f69b4c0612485cb6067d837b'
  checksumType = 'sha256'
  checksum64 = '822d2307f2c0f71dbf68a33c6807ed46a93124defe696a65fb33b913df87f577'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs 

Remove-Item -Force -ea 0 "$toolsPath\*.exe","$toolsPath\*.ignore"
