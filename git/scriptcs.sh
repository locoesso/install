#!/bin/sh

sudo apt install mono-devel

mkdir -p $HOME/.git-install
cd $HOME/.git-install
git clone https://github.com/scriptcs/scriptcs
cd scriptcs
chmod +x build.sh
sudo ./build.sh

echo "
Running scriptcs from bash

To run scriptcs you must use the mono command, i.e. mono scriptcs.exe start.csx.

For convenience, add an alias in your ~/.bash_profile for easily running scriptcs i.e:

alias scriptcs='mono ~/scriptcs/scriptcs.exe'

Replace ~/scriptcs in the snippet with the location of the binaries. Close and re-open your bash terminal and now you can run scriptcs directly:

scriptcs start.csx
"