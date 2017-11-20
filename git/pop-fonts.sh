#!/bin/sh

mkdir -p $HOME/.git-install
cd $HOME/.git-install
git clone https://github.com/pop-os/fonts

cd $HOME/.git-install/fonts
sudo make uninstall
rm -rf ~/.local/share/fonts/roboto-slab

sudo eopkg it font-fira-ttf
cp -r $HOME/.git-install/fonts/roboto-slab $HOME/.local/share/fonts/
