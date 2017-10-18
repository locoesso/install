#/bin/bash

# https://github.com/cyring/CoreFreq

sudo apt install build-essential dkms git libpthread-stubs0-dev

mkdir -p $HOME/.git-install
cd $HOME/.git-install

git clone https://github.com/cyring/CoreFreq.git
cd CoreFreq/
make

echo "
Start

3- Load the kernel module, as root.

modprobe corefreqk

or

insmod corefreqk.ko

4- Start the daemon, as root.

./corefreqd

5- Start the client, as a user.

./corefreq-cli

Stop

6- Press [CTRL]+[C] to stop the client.

7- Press [CTRL]+[C] to stop the daemon.

8- Unload the kernel module with the rmmod command

rmmod corefreqk.ko
"

echo "Look at web site for loading kernel module etc..."


