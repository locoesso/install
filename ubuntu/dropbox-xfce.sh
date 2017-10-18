#! /bin/bash

# cd && wget -O - "http://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd

sudo add-apt-repository ppa:xubuntu-dev/extras
sudo apt-get update
sudo apt-get install thunar-dropbox-plugin