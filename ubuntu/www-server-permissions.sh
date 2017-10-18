sudo groupadd www-dev
sudo usermod -a -G www-dev esso ## must use -a to append to existing groups
sudo chown -R root:www-dev /var/www ## -R for recursive
sudo chmod 2775 /var/www ## 2=set group id, 7=rwx for owner (root), 7=rwx for group (www-pub), 5=rx for world (including apache www-data user)
# There's a -R recursive option, but that won't discriminate between files and folders, so you have to use find:
sudo find /var/www -type d -exec chmod 2775 {} +
sudo find /var/www -type f -exec chmod 0664 {} +
echo "Change the umask for your users to 0002

The umask controls the default file creation permissions, 0002 means files will have 664 and directories 775. Setting this (by editing the umask line at the bottom of /etc/profile in my case) means files created by one user will be writable by other users in the www-group without needing to chmod them."

