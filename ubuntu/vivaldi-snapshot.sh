#/bin/sh

sudo add-apt-repository 'deb http://repo.vivaldi.com/archive/deb/ stable main'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6D3789EDC3401E12
sudo apt update
sudo apt install vivaldi-snapshot
