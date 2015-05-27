#!/bin/sh

# common packages
./shared/common.sh;
#
# new repos
#hmm#sudo cp /home/gavin/Dropboxes/scripts/droppers/repos/google-chrome.repo /etc/yum.repos.d/;
#
# rpmfusion
#hmm#sudo yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y;
#
#hmm#sudo yum install thunar cinnamon -y;

# chromium & chrome
#not available Fedora 20# sudo yum-config-manager --add-repo=http://repos.fedorapeople.org/repos/spot/chromium-unstable/fedora-chromium.repo;
#hmm#sudo yum install chromium -y;
#hmm#sudo yum install google-chrome-beta -y;
#
#
#hmm#sudo yum install fusion-icon xcalib -y;
#hmm#sudo yum install gnome-tweak-tool -y;
sudo yum install geany -y;
#something breaks us precious#sudo yum install gnome-shell-extensio* -y;
##sudo yum install gnome-shell-extension-remove-accessibility-icon -y; # gud
##sudo yum install gnome-shell-extension-auto-move-windows -y; # gud
#hmm#sudo yum install mpg123 -y; # listen playlists on CLI
sudo yum install gimp -y;
sudo yum install rubygem-rhc -y; # OpenShift
#sudo yum install flash-plugin -y;
#sudo yum install http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm -y; 

sudo yum install libxcb-devel -y; # https://github.com/zoltanp/xrandr-invert-colors

#hmm#sudo yum install gconf-editor -y;
#hmm#sudo yum install gstreamer-plugin* gstreamer1-libav gstreamer1-plugins-ugly -y;
#download from web# sudo yum install VirtualBox-OSE -y;   
sudo yum install filezilla -y;

#hmm#sudo yum install nmap-frontend -y;

# freeoffice
# Serial number: 2S8B6-TNHQQ-CDQBY-P6FFX-BJJJJ

# firefox java plugin
#hmm#sudo alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so libjavaplugin.so /usr/java/latest/lib/i386/libnpjp2.so 20000;
#

## fonts
# begin microsoft fonts
#cd /tmp;
#wget http://corefonts.sourceforge.net/msttcorefonts-2.5-1.spec;
#sudo yum install rpm-build cabextract ttmkfdir -y;
#sudo rpmbuild -bb msttcorefonts-2.5-1.spec;
#sudo yum install /root/rpmbuild/RPMS/noarch/msttcorefonts-2.5-1.noarch.rpm -y;
#cd -;
# end microsoft fonts
wget -O easylife.rpm http://sourceforge.net/projects/easylife-linux/files/latest/download; sudo yum install easylife.rpm -y ; rm easylife.rpm ;

sudo yum install vlc -y;

# gnome stuff
gsettings set  org.gnome.shell.overrides button-layout ':minimize,maximize,close';
sudo yum install dconf-editor -y;
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy';
#
# lots of stuff.
sudo yum install terminator gparted -y;

# codecs
sudo yum install gstreamer-plugin-crystalhd -y;
sudo yum install gstreamer1-libav -y;
sudo yum install gstreamer1-vaapi -y;

# for npm slap
sudo yum install xclip -y;

