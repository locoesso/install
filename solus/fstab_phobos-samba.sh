#/bin/bash

echo "********************"
echo "***** USE SUDO *****"
echo "********************"
read -p "Press any key..."

now=$(date +"%d-%m-%Y_%H.%M.%S")

sudo eopkg it samba
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.$now
sudo cp smb.conf.phobos /etc/samba/smb.conf
sudo smbpasswd -a esso

sudo mkdir -p /media/Shared
sudo mkdir -p /media/Delta
sudo mkdir -p /media/Epsilon
sudo mkdir -p /media/Hadraniel
sudo mkdir -p /media/Pluto
sudo mkdir -p /media/Mercury
sudo mkdir -p /media/Mariner
sudo mkdir -p /media/Voyager
sudo mkdir -p /mnt/windows_10
sudo mkdir -p /mnt/windows_boot

echo Backup fstab
sudo cp /etc/fstab /etc/fstab.$now

sudo echo "
/dev/disk/by-uuid/94BE9A1EBE99F946                              /media/Delta auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Delta 0 0
/dev/disk/by-uuid/D804BE8B04BE6C5E                              /media/Voyager auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Voyager 0 0
/dev/disk/by-uuid/7A305EA5305E67E1                              /media/Hadraniel auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Hadraniel 0 0
/dev/disk/by-uuid/F8FEAC07FEABBBEE                              /media/Epsilon auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Epsilon 0 0
/dev/disk/by-id/usb-SAMSUNG_HD103UJ_00E000FF6F604-0:0-part5     /media/Mariner auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Mariner 0 0
/dev/disk/by-id/usb-SAMSUNG_HD103UJ_00E000FF6F604-0:0-part6     /media/Mercury auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Mercury 0 0
/dev/disk/by-uuid/15942CE100DE89BE                              /media/Pluto auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Pluto 0 0
/dev/disk/by-uuid/b9c833ed-9c7e-403d-a698-94d6b73e41f6          /media/Shared auto nosuid,nodev,nofail,x-gvfs-show,x-gvfs-name=Shared 0 0

/dev/disk/by-uuid/56583D16583CF679                              /mnt/windows_10 auto nosuid,nodev,nofail,noauto,x-udisks-auth,x-gvfs-name=Windows10 0 0
/dev/disk/by-uuid/02E0386FE0386AD5                              /mnt/windows_boot auto nosuid,nodev,nofail,noauto,x-udisks-auth,x-gvfs-name=WindowsBoot 0 0

" >>/etc/fstab
sudo mount -a

sudo systemctl enable smb
sudo systemctl start smb
sudo systemctl status smb

