#echo 'deb http://packages.linuxmint.com/ rebecca main upstream import' | sudo tee /etc/apt/sources.list.d/linuxmint.list && key=3EE67F3D0FF405B2 && gpg --keyserver subkeys.pgp.net --recv-keys $key && gpg --armor --export $key | sudo apt-key add - && sudo apt-get update && sudo apt-get install mintmenu xfce4-xfapplet-plugin

sudo add-apt-repository ppa:noobslab/mint
sudo apt-get update
sudo apt-get install mintmenu
