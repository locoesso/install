#/bin/sh

now=$(date +"%d-%m-%Y_%H.%M.%S")

sudo apt install samba
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.$now
sudo cp smb.conf.phobos /etc/samba/smb.conf
sudo smbpasswd -a esso

