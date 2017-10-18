echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee -a /etc/apt/sources.list
sudo apt-key add oracle_vbox.asc
sudo apt-get update
sudo apt-get install virtualbox-4.3
