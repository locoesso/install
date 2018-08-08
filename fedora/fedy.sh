#!/bin/sh

sudo dnf install https://dl.folkswithhats.org/fedora/$(rpm -E %fedora)/RPMS/fedy-release.rpm
sudo dnf install fedy
