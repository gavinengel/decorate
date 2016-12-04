#!/bin/sh

sudo apt-get update;
/home/gavin/decorate/sh/debuntu/apt-get-common.sh;

#sudo apt-get install xcalib streamripper -y;
#sudo apt-get install chromium-browser -y;
#sudo apt-get install deja-dup -y;
#sudo apt-get install libreoffice -y;
#sudo apt-get install aria2 -y; # get metalink downloads
sudo apt-get install thunar -y;
#sudo apt-get install transmission -y;
#sudo apt-get install ttf-aenigma -y;
#sudo apt-get install xcalib numlockx -y;
sudo apt-get install gedit geany -y;
#sudo apt-get install sound-juicer easytag -y;
#sudo apt-get install filezilla -y;

sudo apt-get install flashplugin-nonfree -y;
# photos
#sudo apt-get install gimp gimp-plugin-registry mypaint evince eog -y;
# gnome shell stuffs
sudo apt-get install gnome-shell -y; # works fine Ubuntu 11.10
# focus follows mouse
#gconftool-2 --set --type string /apps/metacity/general/focus_mode mouse; # gconftool-2 --set --type string /apps/metacity/general/focus_mode click

# misc gnome items
#sudo apt-get install gcalctool -y;

#sudo apt-get install samba  system-config-samba -y;
#sudo apt-get install vlc -y;
sudo apt-get install gparted -y;

#smb
#sudo ufw allow 139/tcp;sudo ufw allow 445/tcp;sudo ufw allow 137/udp;sudo ufw allow 138/udp;

# block smtp so emails aren't sent accidentally
sudo ufw deny out 25;

/home/gavin/decorate/sh/debuntu/apt-get-removes.sh;
