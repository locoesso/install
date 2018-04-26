#/bin/bash

sudo eopkg it cifs-utils

#echo "Samba user credentials"
#read -p "Username:   " username
#read -p "Password:   " password
	echo username="$username" >$HOME/.smbcredentials
	echo password="$password" >>$HOME/.smbcredentials
echo "$HOME/.smbcredentials:"
more $HOME/.smbcredentials
sudo chown root ~/.smbcredentials
sudo chmod 600 ~/.smbcredentials

now=$(date +"%d-%m-%Y_%H.%M.%S")
sudo cp /etc/fstab /etc/fstab.$now

sudo mkdir -p /media/Altair
sudo mkdir -p /media/Betelgeuse
sudo mkdir -p /media/Canopus

echo "//phobos/Altair		/media/Altair		cifs	comment=systemd.automount,iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Betelgeuse	/media/Betelgeuse	cifs	comment=systemd.automount,iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Canopus		/media/Canopus		cifs	comment=systemd.automount,iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab

echo "Mount filesystems"
sudo mount -a

ln -s /media/Altair/Video/ ~/Videos/Altair
ln -s /media/Altair/Video/TV ~/Videos/TV
ln -s /media/Betelgeuse/Video/ ~/Videos/Betelgeuse
ln -s /media/Canopus/Video/ ~/Videos/Canopus

