#!/bin/bash

echo "********************"
echo "***** USE SUDO *****"
echo "********************"

sudo echo "export KWIN_TRIPLE_BUFFER=1" >/etc/profile.d/tearing-kwin.sh
chmod a+x /etc/profile.d/tearing-kwin.sh
