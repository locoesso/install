#!/bin/sh

sudo echo "[Webmin]
name=Webmin Distribution Neutral
#baseurl=https://download.webmin.com/download/yum
mirrorlist=https://download.webmin.com/download/yum/mirrorlist
enabled=1
" > /etc/dnf.repos.d/webmin.repo

wget http://www.webmin.com/jcameron-key.asc
sudo rpm --import jcameron-key.asc
rm jcameron-key.asc
sudo dnf install webmin
