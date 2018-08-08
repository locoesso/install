#!/bin/sh

sudo dnf install -y samba samba-client
sudo systemctl enable smb nmb

sudo firewall-cmd --add-service=samba --permanent
sudo firewall-cmd --reload

sudo setsebool -P samba_enable_home_dirs on

echo "sudo pdbedit -a <user>"
