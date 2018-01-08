#!/bin/bash

# Inxi is a bash script that fetches hardware information from multiple
# sources and commands on the system and gives you goodlooking reports
# that non-technical users can read easily.

sudo pacman -S inxi lm_sensors mesa-demos hddtemp lsb-release dmidecode dnsutils bluez-utils hddtemp tree curl wget perl xorg-xrandr
inxi --recommends
