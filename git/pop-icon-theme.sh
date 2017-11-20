#!/bin/sh

mkdir -p $HOME/.git-install
cd $HOME/.git-install
git clone https://github.com/pop-os/icon-theme

cd $HOME/.git-install/icon-theme
sudo make uninstall
sudo rm -rf /usr/share/icons/Pop
rm -rf ~/.local/share/icons/Pop
rm -rf ~/.icons/Pop

sudo make install
sudo make post-install
