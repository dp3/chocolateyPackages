$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName  = 'xournal '
  url          = 'https://downloads.sourceforge.net/project/xournal/xournal-win32-binaries/0.4.8/xournal-0.4.8-win32.zip'
  checksum     = '41e7324b0ef4effe8efc72ba06e4941d66377d65788f73a912ba7b45f0238005'
  checksumType = 'sha256'
  unzipLocation = "$(split-path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
