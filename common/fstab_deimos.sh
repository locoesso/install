#/bin/bash

sudo apt install cifs-utils

echo "Samba user credentials"
read -p "Username:   " username
read -p "Password:   " password
	echo username="$username" >$HOME/.smbcredentials
	echo password="$password" >>$HOME/.smbcredentials
echo "$HOME/.smbcredentials:"
more $HOME/.smbcredentials
sudo chown root ~/.smbcredentials
sudo chmod 600 ~/.smbcredentials

echo "Backup fstab"
now=$(date +"%d-%m-%Y_%H.%M.%S")
sudo cp /etc/fstab /etc/fstab.$now

echo "Make directories to /media"
sudo mkdir -p /media/Delta
sudo mkdir -p /media/Epsilon
sudo mkdir -p /media/Hadraniel
sudo mkdir -p /media/Pluto
sudo mkdir -p /media/Mercury
sudo mkdir -p /media/Mariner
sudo mkdir -p /media/Voyager
# sudo mkdir -p /media/Shared

# echo "/dev/disk/by-uuid/d83021bf-5773-4e99-9781-c3ec225befd6 /media/Shared auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Shared 0 0" | sudo tee -a /etc/fstab

echo "Add lines to fstab"
echo "//phobos/Delta		/media/Delta		cifs	iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Epsilon		/media/Epsilon		cifs	iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Hadraniel	/media/Hadraniel	cifs	iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Pluto		/media/Pluto		cifs	iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Mercury		/media/Mercury		cifs	iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Mariner		/media/Mariner		cifs	iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab
echo "//phobos/Voyager		/media/Voyager		cifs	iocharset=utf8,credentials=$HOME/.smbcredentials,uid=1000	0	0" | sudo tee -a /etc/fstab

echo "Mount filesystems"
sudo mount -a

echo "Video symlinks"
ln -s /media/Mercury/Video/ ~/Videos/Mercury
ln -s /media/Mercury/Video/TV ~/Videos/TV
ln -s /media/Delta/Video/ ~/Videos/Delta
ln -s /media/Epsilon/Video/ ~/Videos/Epsilon
ln -s /media/Hadraniel/Video/ ~/Videos/Hadraniel
ln -s /media/Pluto/Video/ ~/Videos/Pluto
