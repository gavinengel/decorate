#!/bin/sh

sudo apt-get update;
sudo apt-get install xcalib -y;
sudo apt-get install chromium-browser -y;
sudo apt-get install deja-dup -y;
sudo apt-get install libreoffice -y;
sudo apt-get install aria2 -y; # get metalink downloads
sudo apt-get install clamav clamtk -y;
sudo apt-get install ttf-aenigma -y;
sudo apt-get install fbreader -y; #epub reader#
sudo apt-get install xcalib numlockx -y;
sudo apt-get install firebug -y;
sudo apt-get install geany -y;
sudo apt-get install sound-juicer easytag -y;
sudo apt-get install filezilla -y;
sudo apt-get install nmap zenmap -y;
sudo apt-get install flashplugin-nonfree -y;
sudo apt-get install gimp gimp-plugin-registry -y;
# gnome shell stuffs
sudo apt-get install gnome-shell -y; # works fine Ubuntu 11.10
#not tested in Linux Mint#sudo apt-get install gnome-shell-ext* -y;
#sudo apt-get install gnome-shell-extensions-common -y; # works fine Ubuntu 11.10
#sudo apt-get install gnome-shell-extensions-alternate-tab -y;  # works fine Ubuntu 11.10
#sudo apt-get install gnome-shell-extensions-auto-move-windows -y; # works fine Ubuntu 11.10
#sudo apt-get install gnome-shell-extensions-dock -y;  # works fine Ubuntu 11.10
#sudo apt-get install gnome-shell-extensions-user-theme -y;
#sudo apt-get install gnome-shell-extensions-windows-navigator -y;
#sudo apt-get install gnome-shell-extensions-xrandr-indicator -y;
#sudo apt-get install gnome-shell-extensions-apps-menu -y;
#sudo apt-get install gnome-shell-extensions-drive-menu -y;
#sudo apt-get install gnome-shell-extensions-gajim -y;
#sudo apt-get install gnome-shell-extensions-native-window-placement -y;
#sudo apt-get install gnome-shell-extensions-places-menu -y;
#sudo apt-get install gnome-shell-extensions-system-monitor -y;
sudo apt-get purge gnome-shell-extensions-alternative-status-menu -y;


sudo apt-get install tree rar -y;
sudo apt-get install gnome-device-manager -y;
sudo apt-get install compizconfig-settings-manager -y;
sudo apt-get install subversion -y;
sudo apt-get install locate -y;
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
sudo apt-get install git-core -y;
#sudo apt-get kcachegrind -y

sudo apt-get install testdrive virtualbox-ose -y; # test out new Ubuntu images

# abcde cd ripping, get the .abcde.conf from: http://www.andrews-corner.org/abcde.html#mp3
sudo apt-get install abcde id3v2 lame -y;

##codecs per http://ubuntuforums.org/showthread.php?t=1117283
sudo wget http://www.medibuntu.org/sources.list.d/`lsb_release -cs`.list --output-document=/etc/apt/sources.list.d/medibuntu.list && sudo apt-get -q update && sudo apt-get --yes -q --allow-unauthenticated install medibuntu-keyring && sudo apt-get -q update;
sudo apt-get install ffmpeg libavcodec-extra-52 -y;


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


sudo chmod -R 777 /etc/X11/;

##right side icons##
#http://www.ubuntugeek.com/quick-and-easy-title-bar-button-side-switching-in-ubuntu-10-04-lucid9-10-karmic.html
gconftool-2 --set "/apps/metacity/general/button_layout" --type string ":minimize,maximize,close"
#
#First, open up a terminal.
#If you want your Title Bar icons to look like they do in Karmic (RIGHT side), copy and paste the following code into the Terminal and press Enter
#    gconftool-2 --set "/apps/metacity/general/button_layout" --type string ":minimize,maximize,close"
#If you want your Title Bar icons to look like they do in Lucid Alpha (LEFT  side), copy and paste the following code into the Terminal and press Enter:
#    gconftool-2 --set "/apps/metacity/general/button_layout" --type string "maximize,minimize,close:"
#Method 2
#To change the buttons layout from left side of the window to  the rightside , hit the  alt-F2 keys then type gconf-editor, then apps > metacity  > general > button layout > menu:minimize,maximize,close

# Bactrack-y stuff
sudo apt-get install aircrack-ng madwifi-tools -y;

# classic gnome menu indicator
sudo apt-get install classicmenu-indicator;

# gnome shell stuff
mkdir -p ~/.local/share/gnome-shell/extensions;
ln -s ~/Dropboxes/Settings/.local/share/gnome-shell/extensions/noa11y ~/.local/share/gnome-shell/extensions/noa11y;


