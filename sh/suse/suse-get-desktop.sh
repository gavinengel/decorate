#!/bin/sh

/home/gavin/Dropboxes/scripts/droppers/gnome-common.sh;
/home/gavin/Dropboxes/scripts/droppers/suse-get-common.sh;

# mass installs
sudo zypper -n install gconf-editor thunar;

sudo zypper -n install geany; 
sudo zypper -n install xcalib;

# flash
sudo zypper -n install --auto-agree-with-licenses flash-player;
sudo zypper -n install flash-plugin; 

sudo zypper -n install gstreamer-plugin*; 
# download from web# sudo zypper -n install VirtualBox-OSE; 

sudo zypper -n install chromium;
