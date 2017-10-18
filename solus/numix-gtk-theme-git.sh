#/bin/bash

# https://github.com/numixproject/numix-gtk-theme

sudo eopkg remove numix-gtk-theme
sudo rm -rf /usr/share/themes/Numix

sudo eopkg it make automake ruby ruby-sass libxml2 glib2-devel gdk-pixbuf-devel

mkdir -p $HOME/.git-install
cd $HOME/.git-install

git clone https://github.com/numixproject/numix-gtk-theme
cd numix-gtk-theme
sudo make install
