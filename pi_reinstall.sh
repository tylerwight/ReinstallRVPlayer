#!/bin/bash
url="http://install-versions.risevision.com/installer-lnx-armv7l.sh"
outpath="$HOME/installer-lnx-armv7l.sh"
dte=$(date +%Y-%m-%d)


echo "$HOME/rvplayer"

if [ -d "$HOME/rvplayer_$dte" ]; then
	rm -rf $HOME/rvplayer_$dte
	echo "Install from same day found, removing"
fi


if [ -d "$HOME/rvplayer" ]; then
	mv $HOME/rvplayer $HOME/rvplayer_$dte
	rm -rf $HOME/rvplayer_$dte/RiseCache
	echo "old install renamed"
else
	echo "rvplayer not installed"
	exit
fi
	
	
if [ -f "$outpath" ]; then
	rm $outpath
	echo "old script found, deleting"
fi

mkdir $HOME/rvplayer
cp $HOME/rvplayer_$dte/RiseDisplayNetworkII.ini $HOME/rvplayer 

wget -O "$outpath" $url
bash $outpath
