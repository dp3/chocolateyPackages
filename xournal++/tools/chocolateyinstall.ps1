$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName  = 'xournalpp'
  url          = 'https://github.com/xournalpp/xournalpp/releases/download/1.0.18/xournalpp-1.0.18-windows.zip'
  checksum     = 'af14a523fb160a0d1c3fecc9025060ba897b2fab93ddcff5c9bfcbb48951678b'
  checksumType = 'sha256'
  unzipLocation = "$(split-path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
