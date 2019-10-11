$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'libreoffice'
  fileType               = 'msi'
  url                    = 'https://download.documentfoundation.org/libreoffice/stable/6.2.7/win/x86/LibreOffice_6.2.7_Win_x86.msi'
  url64bit               = 'https://download.documentfoundation.org/libreoffice/stable/6.2.7/win/x86_64/LibreOffice_6.2.7_Win_x64.msi'
  checksum               = 'c86e3cbf4a99893b123ab2a03537a631a1e2572b8a1835bb882873935ac1f5be'
  checksum64             = '14a45dfbc56aacde1e14d7662f1b0aeb5b43165563c387ba297e3be8d817cfd3'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/passive /norestart /l*v "{0}\install.log"' -f "$Env:TEMP\chocolatey\$Env:ChocolateyPackageName\$Env:ChocolateyPackageVersion"
  validExitCodes         = @(0,3010)
  softwareName           = 'LibreOffice*'
}
Install-ChocolateyPackage @packageArgs
