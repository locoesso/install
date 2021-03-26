# sudo rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","swapfile1","/home/esso/VirtualBox VMs/","/home/esso/Downloads"} /mnt/chara/rsync/Solus/

sudo rsync -aAXv --delete --dry-run --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile*" --exclude="lost+found" --exclude=".cache" --exclude="Downloads" --exclude="VirtualBox VMs" --exclude=".ecryptfs" / /mnt/chara/rsync/Solus
