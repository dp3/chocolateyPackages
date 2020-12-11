$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = 'Kile'
  fileType = 'exe'
  silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
  url = 'https://sourceforge.net/projects/kile/files/unstable/kile-3.0b3/kile-2.9.93-566-windows-msvc2017_64-cl.exe/download'
  checksum = '8d5a0b84e1695ea86c0dc3fcc8a3031b8ea0754f6a491a8b7832eda88eb02062'
  checksumType = 'sha256'
}

Install-ChocolateyPackage @packageArgs 

Remove-Item -Force -ea 0 "$toolsPath\*.exe","$toolsPath\*.ignore"
