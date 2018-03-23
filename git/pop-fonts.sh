#!/bin/sh

sudo dnf install google-roboto-slab-fonts google-roboto-mono-fonts google-roboto-fonts

mkdir -p $HOME/.git-install
cd $HOME/.git-install
git clone https://github.com/pop-os/fonts

cd $HOME/.git-install/fonts
rm -rf ~/.local/share/fonts/fira

cp -r $HOME/.git-install/fonts/fira $HOME/.local/share/fonts/
