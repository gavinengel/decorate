#!/bin/sh

./shared/common.sh;
./shared/firewall.sh;

sudo dnf install httpd php php-mcrypt php-pdo -y;

## LAMP: Centos6
#sudo dnf install mysql mysql-server php-mysql -y;
#sudo chkconfig mysqld on; # start on boot
#sudo service mysqld start;
## /usr/bin/mysqladmin -u root password 'new-password'; # run once

# LAMP: Centos7
sudo dnf install mariadb-server mariadb -y;
sudo systemctl enable mariadb.service;
sudo systemctl enable httpd.service;
# once: sudo mysql_secure_installation;

# per: http://www.webtrafficexchange.com/solved-mysql-crash-fatal-error-cannot-allocate-memory-buffer-pool
## As a root user, perform the following:
# dd if=/dev/zero of=/swap.dat bs=1024 count=512M
# mkswap /swap.dat
# swapon /swap.dat
## Edit the /etc/fstab, and the following entry.
# /swap.dat      none    swap    sw      0       0 

# mongo
sudo cp ./shared/etc/yum.repos.d/mongodb-org-3.0.repo /etc/yum.repos.d/mongodb-org-3.0.repo;
sudo dnf install -y mongodb-org;

# for Drupal
sudo dnf install gd gd-devel php-gd php-mbstring php-xml -y;
#apache mods
sudo apachectl restart;

sudo dnf install fail2ban -y;
