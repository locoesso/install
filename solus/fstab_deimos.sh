#/bin/sh

echo "********************"
echo "***** USE SUDO *****"
echo "********************"
read -p "Press any key..."

sudo eopkg it cifs-utils

echo "Samba user credentials"
read -p "Username:   " username
read -p "Password:   " password
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

echo "//phobos/Altair		/media/Altair		cifs	comment=systemd.automount,iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Betelgeuse	/media/Betelgeuse	cifs	comment=systemd.automount,iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab

echo "Mount filesystems"
sudo mount -a

ln -s /media/Altair/Video/ /home/esso/Videos/Altair
ln -s /media/Altair/Video/TV /home/esso/Videos/TV
ln -s /media/Betelgeuse/Video/ /home/esso/Videos/Betelgeuse

