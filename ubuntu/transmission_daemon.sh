#/bin/bash

echo "Transmission remote"
read -p "Username:   " username
read -p "Password:   " password
read -p "Download torrents to:   " dl_to

sudo apt install transmission-cli transmission-common transmission-daemon
sudo transmission-daemon -f -t -u "$username" -v "$password" -w "$dl_to"
chmod -R 777 "$dl_to"
