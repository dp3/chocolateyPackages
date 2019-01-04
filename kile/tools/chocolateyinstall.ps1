$packageName = 'Kile'
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /S /quiet'
$url = 'https://sourceforge.net/projects/kile/files/unstable/kile-3.0b2/kile-2.9.92-2-windows-msvc2017_64-cl.exe'
$checksum = '822d2307f2c0f71dbf68a33c6807ed46a93124defe696a65fb33b913df87f577'
$checksumType = 'sha256'
Install-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType"
