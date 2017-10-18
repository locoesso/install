#!/bin/bash
# compton

# http://duncanlock.net/blog/2013/06/07/how-to-switch-to-compton-for-beautiful-tear-free-compositing-in-xfce/

#sudo apt-add-repository ppa:richardgv/compton
#sudo apt-get update
sudo apt-get install compton
cp compton.conf ~/.config/

echo Disable Compiz (xfce control panel)
echo Add compton to auto-start

