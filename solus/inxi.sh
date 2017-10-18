#!/bin/bash

# Inxi is a bash script that fetches hardware information from multiple
# sources and commands on the system and gives you goodlooking reports
# that non-technical users can read easily.

sudo eopkg it inxi lm_sensors bind-utils dmidecode
inxi --recommends
inxi -F
