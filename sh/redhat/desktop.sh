#!/bin/sh

# common packages
~/decorate/sh/redhat/shared/common.sh;
#
# new repos
#hmm#sudo cp /home/gavin/Dropboxes/scripts/droppers/repos/google-chrome.repo /etc/yum.repos.d/;
#
# rpmfusion
#hmm#sudo yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y;
#
#hmm#sudo dnf install thunar cinnamon -y;

# chromium & chrome
#not available Fedora 20# sudo yum-config-manager --add-repo=http://repos.fedorapeople.org/repos/spot/chromium-unstable/fedora-chromium.repo;
#hmm#sudo dnf install chromium -y;
#hmm#sudo dnf install google-chrome-beta -y;
#
#
#sudo dnf install xcalib -y;
#hmm#sudo dnf install gnome-tweak-tool -y;
sudo dnf install geany -y;
#something breaks us precious#sudo dnf install gnome-shell-extensio* -y;
##sudo dnf install gnome-shell-extension-remove-accessibility-icon -y; # gud
##sudo dnf install gnome-shell-extension-auto-move-windows -y; # gud
#hmm#sudo dnf install mpg123 -y; # listen playlists on CLI
sudo dnf install gimp -y;
sudo dnf install rubygem-rhc -y; # OpenShift
#sudo dnf install flash-plugin -y;
#sudo dnf install http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm -y; 

sudo dnf install libxcb-devel -y; # https://github.com/zoltanp/xrandr-invert-colors

#hmm#sudo dnf install gconf-editor -y;
#hmm#sudo dnf install gstreamer-plugin* gstreamer1-libav gstreamer1-plugins-ugly -y;
#download from web# sudo dnf install VirtualBox-OSE -y;   
sudo dnf install filezilla -y;

#hmm#sudo dnf install nmap-frontend -y;

# freeoffice
# Serial number: 2S8B6-TNHQQ-CDQBY-P6FFX-BJJJJ

# firefox java plugin
#hmm#sudo alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so libjavaplugin.so /usr/java/latest/lib/i386/libnpjp2.so 20000;
#

## fonts
# begin microsoft fonts
#cd /tmp;
#wget http://corefonts.sourceforge.net/msttcorefonts-2.5-1.spec;
#sudo dnf install rpm-build cabextract ttmkfdir -y;
#sudo rpmbuild -bb msttcorefonts-2.5-1.spec;
#sudo dnf install /root/rpmbuild/RPMS/noarch/msttcorefonts-2.5-1.noarch.rpm -y;
#cd -;
# end microsoft fonts
wget -O easylife.rpm http://sourceforge.net/projects/easylife-linux/files/latest/download; sudo dnf install easylife.rpm -y ; rm easylife.rpm ;

sudo dnf install vlc -y;

# gnome stuff
gsettings set  org.gnome.shell.overrides button-layout ':minimize,maximize,close';
sudo dnf install dconf-editor -y;
gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy';
#
# lots of stuff.
sudo dnf install terminator gparted -y;

# codecs
sudo dnf install gstreamer-plugin-crystalhd -y;
sudo dnf install gstreamer1-libav -y;
sudo dnf install gstreamer1-vaapi -y;

# disable background update downloading
gsettings set org.gnome.software download-updates false;

# for npm slap
sudo dnf install xclip -y;

