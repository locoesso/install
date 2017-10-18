#!/bin/bash

# A tiling terminal emulator for Linux using GTK+ 3
# https://github.com/gnunn1/tilix

sudo add-apt-repository ppa:webupd8team/terminix
sudo apt update
sudo apt install tilix

cp $HOME/.bashrc $HOME/.bashrc.ORG
echo "
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
">>$HOME/.bashrc
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

