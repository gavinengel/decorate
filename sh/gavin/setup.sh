#!/bin/sh

#git config --global user.name "Gavin Engel";
#git config --global user.email gavin@engel.com;
#git config --global push.default simple;
#git config --global url."https://".insteadOf git://; # solves github timeouts on npm install

##sudo adduser -m gavin;

rm -rf ~/.gconf; ln -sf ~/decorate/sh/gavin/aliases/.gconf ~/;
rm -rf ~/.config/terminator; ln -sf ~/decorate/sh/gavin/aliases/dot-config/terminator ~/.config/terminator;
#ln -sf ~/decorate/sh/gavin/aliases/dot-config/midori/bookmarks.db ~/.config/midori/;
#ln -sf ~/decorate/sh/gavin/aliases/dot-config/midori/speeddial ~/.config/midori/;
#ln -sf ~/decorate/sh/gavin/aliases/dot-config/midori/config ~/.config/midori/;

# http://worldofgnome.org/how-to-set-focus-follows-mouse-in-gnome-3-windows/
gsettings set org.gnome.desktop.wm.preferences auto-raise true;
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy;
gsettings set org.gnome.desktop.wm.preferences auto-raise-delay 300;

sudo crudini --set /etc/default/apport '' enabled 0;

sudo crudini --set /etc/xdg/autostart/abrt-applet.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gnome-keyring-ssh.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/pulseaudio.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/tracker-miner-user-guides.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/at-spi-dbus-bus.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gnome-settings-daemon.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/sealertauto.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/tracker-store.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/caribou-autostart.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gnome-software-service.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/spice-vdagent.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/update-notifier.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gnome-initial-setup-copy-worker.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/gnome-welcome-tour.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/tracker-extract.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/user-dirs-update-gtk.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gnome-initial-setup-first-login.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gsettings-data-convert.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/tracker-miner-apps.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/vmware-user.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gnome-keyring-pkcs11.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/nautilus-autostart.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/tracker-miner-fs.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/xdg-user-dirs.desktop 'Desktop Entry' Hidden true;
#sudo crudini --set /etc/xdg/autostart/gnome-keyring-secrets.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/orca-autostart.desktop 'Desktop Entry' Hidden true;
sudo crudini --set /etc/xdg/autostart/tracker-miner-rss.desktop 'Desktop Entry' Hidden true;



## then, add to end of .bash_profile:
# source ~/.sh_common

npm config set init.author.name "Gavin Engel"
npm config set init.author.email gavin@engel.com 
npm config set init.author.url http://www.gavinengel.com/
npm config set init.license MIT
npm set progress=false; # https://twitter.com/gavinjoyce/status/691773956144119808

