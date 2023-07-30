# Chocolatey for Windows 10 derivatives

gsudo
winfetch
Ntop.Portable

Register-PackageSource -Name chocolatey -ProvideName Chocolatey -Location http://chocolatey.org/api/v2
get-PackageSource

# search
Find-Package sysinternals -IncludeDependencies

# install
Install-Package -name sysinternals

$VLC_URL = "https://get.videolan.org/vlc/last/win64/"
$GET_HTML = Invoke-WebRequest $VLC_URL
$FILE = $GET_HTML.Links | Select-Object @{Label='href';Expression={@{$true=$_.href}[$_.href.EndsWith('win64.exe')]}} | Select-Object -ExpandProperty href
$URL = ($VLC_URL+$FILE)
$DOWNLOAD_DIR = "C:\users\qwiklabs\Downloads\"
$OUTPUT_FILE = ($DOWNLOAD_DIR+$FILE)
(new-object System.Net.WebClient).DownloadFile($URL, $OUTPUT_FILE)
cmd.exe /c $OUTPUT_FILE /S

# list
Get-Package -name sysinternals
Get-Package -Name *vlc*

# remove
Uninstall-Package -Name sysinternals

cmd.exe /c "C:\Program Files\GIMP 2\uninst\unins000.exe" /VERYSILENT /NORESTART

