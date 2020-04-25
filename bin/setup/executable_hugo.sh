#!/bin/bash

cd /tmp
#wget https://github.com/gohugoio/hugo/releases/download/v0.57.2/hugo_extended_0.57.2_Linux-64bit.tar.gz
#tar zxfv hugo_extended_0.57.2_Linux-64bit.tar.gz
#sudo mv hugo /usr/local/bin/
#sudo chmod +x /usr/local/bin/hugo

wget https://github.com/gohugoio/hugo/releases/download/v0.69.2/hugo_extended_0.69.2_Linux-64bit.deb
sudo dpkg -i hugo_extended_0.69.2_Linux-64bit.deb
rm hugo_extended_0.69.2_Linux-64bit.deb


