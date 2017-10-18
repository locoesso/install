#!/bin/bash

# Inxi is a bash script that fetches hardware information from multiple
# sources and commands on the system and gives you goodlooking reports
# that non-technical users can read easily.

sudo apt install inxi lm-sensors hddtemp dmidecode
inxi --recommends
inxi -F
