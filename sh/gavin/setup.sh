#!/bin/sh

git config --global user.name "Gavin Engel";
git config --global user.email gavin@engel.com;
git config --global push.default simple;
git config --global url."https://".insteadOf git://; # solves github timeouts on npm install

##sudo adduser -m gavin;

rm -rf ~/.gconf; ln -sf ~/decorate/sh/gavin/aliases/.gconf ~/;
rm -rf ~/.config/terminator; ln -sf ~/decorate/sh/gavin/aliases/dot-config/terminator ~/.config/terminator;
ln -sf ~/decorate/sh/gavin/aliases/dot-config/midori/bookmarks.db ~/.config/midori/;
ln -sf ~/decorate/sh/gavin/aliases/dot-config/midori/speeddial ~/.config/midori/;
ln -sf ~/decorate/sh/gavin/aliases/dot-config/midori/config ~/.config/midori/;

gsettings set org.gnome.desktop.wm.preferences auto-raise false;
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy;
# gsettings set org.gnome.desktop.wm.preferences auto-raise-delay 500;

## then, add to end of .bash_profile:
# source ~/.sh_common

npm config set init.author.name "Gavin Engel"
npm config set init.author.email gavin@engel.com 
npm config set init.author.url http://www.gavinengel.com/
npm config set init.license MIT
npm set progress=false; # https://twitter.com/gavinjoyce/status/691773956144119808

