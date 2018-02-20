echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee -a /etc/apt/sources.list
sudo apt-key add oracle_vbox.asc
sudo apt update
sudo apt search virtualbox
