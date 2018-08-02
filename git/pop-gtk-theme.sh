#!/bin/sh

# sudo eopkg it libsass sassc inkscape optipng make
# sudo pacman -S libsass sassc inkscape optipng make

mkdir -p $HOME/.git-install
cd $HOME/.git-install
git clone https://github.com/pop-os/gtk-theme

cd $HOME/.git-install/gtk-theme
sudo make uninstall
sudo rm -rf /usr/share/themes/{Pop,Pop-Eta,Pop-Nokto,Pop-Nokto-Eta}
rm -rf ~/.local/share/themes/{Pop,Pop-Eta,Pop-Nokto,Pop-Nokto-Eta}
rm -rf ~/.themes/{Pop,Pop-Eta,Pop-Nokto,Pop-Nokto-Eta}

make

sudo make install

