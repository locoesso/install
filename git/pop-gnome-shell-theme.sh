#!/bin/sh

echo "Use sudo"

# sudo eopkg it libsass sassc inkscape optipng make
# sudo pacman -S libsass sassc inkscape optipng make glib2

mkdir -p $HOME/.git-install
cd $HOME/.git-install
git clone https://github.com/pop-os/gnome-shell-theme

cd $HOME/.git-install/gnome-shell-theme

# sudo apt remove system76-pop-gtk-theme
# sudo pacman -R pop-gnome-shell-theme-bin
sudo make uninstall
# sudo rm -rf /usr/share/themes/{Pop,Pop-Eta,Pop-Nokto,Pop-Nokto-Eta}
# rm -rf ~/.local/share/themes/{Pop,Pop-Eta,Pop-Nokto,Pop-Nokto-Eta}
# rm -rf ~/.themes/{Pop,Pop-Eta,Pop-Nokto,Pop-Nokto-Eta}

make clean
make

make install
