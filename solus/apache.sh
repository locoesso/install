#!/bin/bash

# Install Apache web server

# https://solus-project.com/articles/software/httpd/en/

sudo eopkg install httpd

ls -al /var/www/

sudo systemctl enable httpd # Enable on startup
sudo systemctl start httpd # Start the web server
# sudo systemctl stop httpd # Stop the web server
