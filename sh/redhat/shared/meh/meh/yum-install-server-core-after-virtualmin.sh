#!/bin/sh

# Before running these commands, please install VirtualMin (it rocks.)
# sudo yum update;cd;wget http://software.virtualmin.com/gpl/scripts/install.sh;chmod +x ~/install.sh; sudo ./install.sh; rm -f ~/install.sh;
# then after Virtual is installed, run these tasks within the Virtualmin web panel:
# - complete first use setup
# - set mod_php as module to parse PHP: Virtualmin -> System Settings -> Server Templates -> Default -> Apache Website (this will also affect the subdomains)
# - turn off Webmin/Virtualmin/Usermin starting at boot: Webmin -> System -> Bootup and Shutdown, disable both Webmin and Usermin
#   instead of: sudo replace 'atboot=1' 'atboot=0' -- /etc/webmin/miniserv.conf;

setup; # in Firewall Configuration allow all.
setup; # in Network Configuration, set hostname, Primary DNS to 8.8.8.8 and Secondary DNS to 8.8.4.4
sudo rm /etc/localtime;sudo ln -sf /usr/share/zoneinfo/EST /etc/localtime;

sudo yum update;
sudo dnf install make vim lynx -y; # stuff everyone should have!

# APC #
sudo dnf install gcc pcre-devel php-pear php-devel httpd-devel -y;sudo pecl channel-update pecl.php.net;sudo pecl install apc; # accept defaults.
# make sure this line is in /etc/php.ini: extension=apc.so
sudo service httpd restart;

# Server package updates #
# yum-cron vs yum-updatesd: http://docs.fedoraproject.org/en-US/Fedora/14/html/Software_Management_Guide/ch07s07.html
sudo service yum-updatesd stop;sudo yum remove yum-updatesd;sudo yum update;
sudo yum -y install yum-cron;sudo yum update;sudo /etc/init.d/yum-cron start;sudo chkconfig yum-cron on;

# better .bashrc
#cd;rm -f generic-remote-bashrc .bashrc;wget https://raw.github.com/gavinengel/generic-remote-bashrc/master/generic-remote-bashrc;ln -s generic-remote-bashrc .bashrc;


# Remove some things which might be installed


sudo yum clean all;

# fin
