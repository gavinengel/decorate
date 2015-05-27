#!/bin/sh
# don't use yum, apt, or zypper here.

# show files on desktop
gsettings set org.gnome.desktop.background show-desktop-icons true;

# show shares on desktop
#gsettings set org.gnome.nautilus.desktop volumes-visible true;

# last: restart nautilus
#nautilus -q;


sudo yum install levien-inconsolata-fonts package -y;

