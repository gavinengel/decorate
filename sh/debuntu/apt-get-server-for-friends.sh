#!/bin/sh
sudo locale-gen en_US.UTF-8;
sudo apt-get update;
sudo apt-get install ssh -y;
sudo apt-get install man locate make -y;
sudo apt-get install powertop iotop -y; # TOPS!
sudo apt-get install ufw -y;
sudo apt-get install apache2 libapache2-mod-auth-mysql  mysql-server -y;
sudo apt-get install php5 php5-cli  php-apc  php5-mysql  php5-gd php5-curl php5-mcrypt php-pear php5-xdebug -y;

## begin php cacheing
sudo apt-get install php5-dev libpcre3-dev libmagic-dev memcached php5-memcache -y;
sudo apt-get install php-apc -y;
sudo /etc/init.d/apache2 restart;
## end php cacheing

sudo apt-get install unzip p7zip -y;
sudo apt-get install lynx elinks -y;

sudo apt-get install rsync -y;
sudo ufw enable;
sudo ufw allow 21/tcp;
sudo ufw allow 22/tcp;
sudo ufw allow 80/tcp;
sudo ufw allow 443/tcp;
sudo ufw allow 443/tcp;  
sudo ufw allow 10000/tcp; # virtualmin
#bandwidth monitors:
sudo apt get install nethogs iptraf -y;

#apache mods
sudo a2enmod rewrite;
sudo /etc/init.d/apache2 restart;

sudo apt-get install ssl-cert -y;
sudo a2ensite default-ssl;
sudo a2enmod ssl;

#rootkit stuff
sudo apt-get install rkhunter -y;
sudo apt-get install chkrootkit -y;

#fin.
sudo apt-get autoremove -y;
