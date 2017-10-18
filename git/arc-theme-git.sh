#/bin/bash

# https://github.com/horst3180/arc-theme

sudo apt install autoconf automake pkg-config libgtk-3-dev git
sudo apt remove arc-theme
sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

mkdir -p $HOME/.git-install
cd $HOME/.git-install

git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install
