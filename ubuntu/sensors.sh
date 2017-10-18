#!/bin/bash

sudo apt-get install lm-sensors

# Select YES when asked if hddtemp should run at boot. Select the defaults for the other questions.
# sudo dpkg-reconfigure hddtemp

# Answer YES to everything.
sudo sensors-detect

# To avoid a system restart, run the following command to load the modules required by the sensors:
sudo service kmod start

sensors
# sudo hddtemp /dev/sd[a,b,c,d,e,f]

