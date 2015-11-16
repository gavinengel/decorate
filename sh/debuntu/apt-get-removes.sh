#! /bin/sh

#remove unwanted
sudo apt-get remove evolution -y;
sudo apt-get purge openoffice* -y;
#sudo apt-get purge transmission -y; # use tribler instead

sudo apt-get autoremove;
sudo apt-get autoclean;

