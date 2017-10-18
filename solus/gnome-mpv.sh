#!/bin/bash

sudo eopkg it gnome-mpv

mkdir $HOME/.config/mpv
echo "
alang=fi,en
slang=fi,en
# vo=vdpau
# hwdec=vdpau
# autofit=100%
">$HOME/.config/mpv/mpv.conf
