#!/bin/bash

sudo apt install apache2
sudo apt install mysql-server
sudo apt install php libapache2-mod-php
sudo /etc/init.d/apache2 restart
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

