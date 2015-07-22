#!/bin/sh

# add ppa's
##sudo add-apt-repository ppa:diesch/testing; 
##sudo add-apt-repository ppa:ferramroberto/gnome3;
##sudo add-apt-repository ppa:webupd8team/tribler -y;

sudo apt-get update;

# ppa installs
##sudo apt-get install tribler -y;

/home/gavin/Dropboxes/scripts/droppers/apt-get-common.sh;

# non-ppa installs
sudo apt-get install xcalib streamripper -y;
sudo apt-get install chromium-browser -y;
sudo apt-get install deja-dup -y;
sudo apt-get install libreoffice -y;
sudo apt-get install aria2 -y; # get metalink downloads
sudo apt-get install thunar -y;
sudo apt-get install transmission -y;
sudo apt-get install ttf-aenigma -y;
sudo apt-get install fbreader -y; #epub reader#
sudo apt-get install xcalib numlockx -y;
sudo apt-get install firebug -y;
sudo apt-get install gedit geany -y;
sudo apt-get install sound-juicer easytag -y;
sudo apt-get install filezilla -y;

sudo apt-get install flashplugin-nonfree -y;
# photos
sudo apt-get install gimp gimp-plugin-registry mypaint evince eog -y;
# gnome shell stuffs
sudo apt-get install gnome-shell -y; # works fine Ubuntu 11.10
# focus follows mouse
gconftool-2 --set --type string /apps/metacity/general/focus_mode mouse; # gconftool-2 --set --type string /apps/metacity/general/focus_mode click


# misc gnome items
sudo apt-get install gcalctool -y;

sudo apt-get install samba  system-config-samba  smbfs -y;
#breaks-zend?#sudo apt-get install sun-java6-jre sun-java6-plugin sun-java6-fonts -y
#breaks-zend?#sudo apt-get install mail-notification -y
sudo apt-get install vlc -y;
#breaks-zend?#sudo apt-get install wine -y
sudo apt-get install gparted -y;
sudo apt-get install ubuntu-restricted-extras -y;
#breaks-zend?#sudo apt-get install sound-juicer -y

#with 11.04, some of these make break newer packages #sudo apt-get install gstreamer0.10-plugins-bad gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-ugly -y

sudo apt-get install mysql-admin -y;

#sudo apt-get kcachegrind -y

#hmm virtualbox gives me issues# sudo apt-get install testdrive virtualbox-ose -y; # test out new Ubuntu images

# abcde cd ripping, get the .abcde.conf from: http://www.andrews-corner.org/abcde.html#mp3
#sudo apt-get install abcde id3v2 lame -y;


###email checkers
#cgmail - needs password to start
#mail-notification - needs password
#kbiff - needs password
#gnubiff -not good.
#googsystray -- seems the best. no password each reboot.


#crypto
#sudo apt-get install ecryptfs-setup-private#odd error maybe

#smb
sudo ufw allow 139/tcp;sudo ufw allow 445/tcp;sudo ufw allow 137/udp;sudo ufw allow 138/udp;


# Backtrack-y stuff
#sudo apt-get install aircrack-ng madwifi-tools -y;

/home/gavin/Dropboxes/scripts/droppers/apt-get-removes.sh;
