#/bin/sh

sudo add-apt-repository ppa:mati75/qt5ct
sudo apt update
sudo apt install qt4-qtconfig qt5ct

echo "export QT_QPA_PLATFORMTHEME=qt5ct" | tee -a ~/.profile
sudo echo "export QT_QPA_PLATFORMTHEME=qt5ct" | sudo tee -a /etc/environment

