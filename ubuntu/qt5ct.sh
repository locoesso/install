sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install qt5ct
#mv ~/.profile ~/.profile.org
echo "export QT_QPA_PLATFORMTHEME="qt5ct"" | tee -a ~/.profile
