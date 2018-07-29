#/bin/sh

sudo add-apt-repository 'deb http://repo.vivaldi.com/archive/deb/ stable main'
wget -qO- http://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo apt update
sudo apt install vivaldi-stable
