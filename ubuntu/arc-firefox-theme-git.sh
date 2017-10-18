sudo apt install autoconf automake pkg-config libgtk-3-dev git
cd /tmp/arc-firefox-theme
sudo make uninstall
cd /tmp
git clone https://github.com/horst3180/arc-firefox-theme && cd arc-firefox-theme
./autogen.sh --prefix=/usr
sudo make install
