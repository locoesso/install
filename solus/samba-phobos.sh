#/bin/bash

now=$(date +"%d-%m-%Y_%H.%M.%S")

sudo eopkg it samba
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.$now
sudo cp smb.conf.phobos /etc/samba/smb.conf
sudo smbpasswd -a esso
sudo smbpasswd -e esso

sudo systemctl enable smb.service
sudo systemctl start smb.service
sudo systemctl status smb.service

