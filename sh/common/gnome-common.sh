#!/bin/sh
# don't use yum, apt, or zypper here.

# show files on desktop
gsettings set org.gnome.desktop.background show-desktop-icons true;

# show shares on desktop
#gsettings set org.gnome.nautilus.desktop volumes-visible true;

# last: restart nautilus
#nautilus -q;


npm config set init.author.name "Gavin Engel"
npm config set init.author.email gavin@engel.com 
npm config set init.author.url http://www.gavinengel.com/
npm config set init.license MIT


sudo yum install levien-inconsolata-fonts package -y;

