$url = "http://install-versions.risevision.com/installer-win-64.exe"
$outpath = "$PSScriptRoot/installer-win-64.exe"
$date = (Get-Date).ToString("yyyy-MM-dd")

if (Test-Path "$HOME\AppData\local\rvplayer_$date"){
	Remove-Item -Path "$HOME\AppData\local\rvplayer_$date" -recurse
}

if (Test-Path "$HOME\Appdata\local\rvplayer"){
	Rename-Item -Path "$HOME\Appdata\local\rvplayer" -NewName "rvplayer_$date"
	Remove-Item -Path "$HOME\Appdata\local\rvplayer_$date\RiseCache" -recurse
}else{
	Write-Output "rvplayer not installed"
	exit
}

New-Item -ItemType Directory -Path "$HOME\appdata\local\rvplayer" -Force
Copy-Item "$HOME\appdata\local\rvplayer_$date\RiseDisplayNetworkII.ini" -Destination "$HOME\appdata\local\rvplayer\"

Invoke-WebRequest -Uri $url -OutFile $outpath
Start-Process -Filepath $outpath
