#!/bin/bash

source init.sh

# sudo apt install dstat
version=`curl -s https://api.github.com/repos/ClementTsang/bottom/releases/latest | grep "browser_download_url.*amd64.deb" | cut -d : -f 2,3 | tr -d \" |  cut -d'/' -f8`
file="bottom_$version""_amd64.deb"
link="https://github.com/ClementTsang/bottom/releases/download/$version/$file"
curl -LO $link
sudo dpkg -i $file
rm -f $file
