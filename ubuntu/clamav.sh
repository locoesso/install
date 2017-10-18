#!/bin/bash

sudo apt install clamav clamav-daemon clamtk
sudo freshclam
sudo /etc/init.d/clamav-daemon start
sudo /etc/init.d/clamav-daemon status
sudo /etc/init.d/clamav-freshclam start
sudo /etc/init.d/clamav-freshclam status
sudo clamdscan -V
