#!/bin/sh

# Before running these commands, please install VirtualMin (it rocks.)
# sudo apt-get update;sudo apt-get install dovecot-common -y;cd;wget http://software.virtualmin.com/gpl/scripts/install.sh;chmod +x ~/install.sh; sudo ./install.sh; rm ~/install.sh; # When asked by Virtualmin setup, do NOT use the ip address as the hostname; feel free to use host.example.com
# then after Virtual is installed, run these tasks within the Virtualmin web panel:
# - complete first use setup
# - set mod_php as module to parse PHP: Virtualmin -> System Settings -> Server Templates -> Default -> Apache Website (this will also affect the subdomains)
# - turn off Apache KeepAlive
# - disable PostGresql: 
#   To do that, you can first make sure Virtualmin isn't using it by going into System Settings -> Features and Plugins, and uncheck "PostgreSQL database".
#   Next, you can prevent Postgres from loading on startup by going into Webmin -> System -> Bootup and Shutdown, and set "At Boot" to "No" for the Posgres service.
# - turn off Webmin/Virtualmin starting at boot: sudo replace 'atboot=1' 'atboot=0' -- /etc/webmin/miniserv.conf;

sudo locale-gen en_US.UTF-8;
sudo apt-get update;
sudo apt-get install man-db locate make vim unzip p7zip lynx rsync dnsutils -y; # stuff everyone should have!
sudo apt-get install heirloom-mailx -y; # for CLI email sending (bsd-mailx doesn't support -r), example: # mailx -s "Testing email via mailx" -r sender@example.com destination@gmail.com < ~/.bashrc
sudo apt-get install htop powertop iotop nethogs iptraf -y; # tops/memory/traffic monitoring

# LAMP stuff not installed with virtualmin, but is used a lot
sudo apt-get install php5-mysql php5-gd php5-mcrypt php5-curl php5-mysql -y; 

#tuning-primer.sh requires this
sudo apt-get install bc -y;

#rootkit stuff
sudo apt-get install rkhunter chkrootkit -y;

# UFW (Ubuntu/Debian Uncomplicated Firewall) #
sudo apt-get install ufw -y;
#
sudo ufw allow 21/tcp; # ftp will occur through Virtualmin virtual server usernames, not through root
sudo ufw allow 22/tcp; # ssh/sftp
sudo ufw allow 80/tcp; # http
sudo ufw allow 443/tcp; # https
sudo ufw allow 10000/tcp; # virtualmin
#sudo ufw allow 20000/tcp; # usermin
sudo ufw allow 3306/tcp; # mysql
sudo ufw enable;

# APC #
sudo apt-get install php5-dev libpcre3-dev libmagic-dev memcached php5-memcache -y;
sudo apt-get install php-apc -y;
/etc/init.d/apache2 graceful;

# Server package updates #
sudo apt-get install unattended-upgrades -y;
# You should be seeing two lines, each ending with a one after cat'ing this file.
cat /etc/apt/apt.conf.d/20auto-upgrades
# ... if not, then run this once: sudo dpkg-reconfigure -plow unattended-upgrades

# Eliminate DNS recursion & Response Rate Limiting
# edit /etc/bind/named.conf.options to insert this block:
#
# // added by gje, using advice from DigitalOcean
# recursion no;
# additional-from-cache no;
# rate-limit {
#    responses-per-second 10;
#    window 5;
# };
# // end gje customedit


# Remove some things which might be installed
sudo apt-get purge whoopsie -y;


sudo apt-get autoremove -y;
sudo apt-get upgrade -y;

# fin
