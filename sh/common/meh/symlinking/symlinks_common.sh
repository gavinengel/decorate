#! /bin/sh
echo "[Symlinks for All]"

#permissions
sudo chmod 700 /home/gavin
sudo chown gavin /home/gavin

#single files
rm ~/.bashrc
ln -s ~/Dropboxes/Settings/.bashrc ~/.bashrc

rm ~/.rtorrent.rc
ln -s ~/Dropboxes/Settings/.rtorrent.rc ~/.rtorrent.rc


#folders
rm -rf ~/scripts
ln -s ~/Dropboxes/scripts ~/scripts

