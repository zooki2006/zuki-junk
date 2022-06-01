#!/bin/sh
arg1=$1
arg2=$2
arg3=$3
if [ "$arg2" = 1 ]
then
	arg1=https://api.github.com/repos/$1/releases/latest	
fi

if [ "$arg2" = 2 ]
then
curl "$arg1" | grep "browser_download_url.*AppImage" | grep "$3" | cut -d : -f 2,3 | tr -d \"  
else
curl -s "$arg1" | grep "browser_download_url.*AppImage" | grep "$3" | cut -d : -f 2,3 | tr -d \" | wget -P ~/Applications/ -qi -
fi

#curl "$arg1" | grep "browser_download_url.*AppImage" | cut -d : -f 2,3 | tr -d \" #| wget -qi -

#curl -s $arg1 \
#| grep "browser_download_url.*deb" \
#| grep "browser_download_url.*appimage" \
#| cut -d : -f 2,3 \
#| tr -d \" \
#| wget -qi -




#curl -s https://api.github.com/repos/jgm/pandoc/releases/latest \
#| grep "browser_download_url.*deb" \
#| cut -d : -f 2,3 \
#| tr -d \" \
#| wget -qi -

