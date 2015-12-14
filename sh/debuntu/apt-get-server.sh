#!/bin/sh
sudo locale-gen en_US.UTF-8;
#sudo apt-get update;
sudo apt-get install man locate make vim -y; # stuff everyone should have!
sudo apt-get install ssh -y;
sudo apt-get install heirloom-mailx -y; # for CLI email sending (bsd-mailx doesn't support -r), example: # mailx -s "Testing email via mailx" -r sender@example.com destination@gmail.com < ~/.bashrc
sudo apt-get install powertop iotop nethogs iptraf -y; # tops/memory/traffic monitoring
sudo apt-get install ufw -y;
sudo apt-get install apache2 libapache2-mod-auth-mysql  mysql-server -y;
sudo apt-get install apache2-suexec -y; # fixes: Warning: SuexecUserGroup directive requires SUEXEC wrapper.
sudo apt-get install libapache2-mod-fcgid -y; # fixes: Cannot load /usr/lib/apache2/modules/mod_fcgid.so into server:
# ##root@brnz:/etc/apache2/sites-available# replace 'SuexecUserGroup' '#SuexecUserGroup' -- *  ## How-To: Fix “command not in docroot” suexec apache error
sudo apt-get install dovecot-common -y; # instead of apt-get install postfix (this is for virtualmin)

#below line confilicts with zend-server:#
sudo apt-get install php5 php-apc  php5-mysql  php5-gd php5-curl mcrypt php5-mcrypt php-pear php5-xdebug php5-xsl -y;
sudo php5enmod mcrypt -y;

## begin php cacheing
sudo apt-get install php5-dev libpcre3-dev libmagic-dev memcached php5-memcache -y;
sudo apt-get install php-apc -y;
sudo /etc/init.d/apache2 restart;

#[memcached]
#extension=memcache.so

#[fileinfo]
#extension=fileinfo.so

#[APC]
#extension = apc.so
#apc.enabled = 1
#apc.shm_segments = 1
#apc.shm_size = 32M
#apc.optimization = 0
#apc.num_files_hint = 512
#apc.user_entries_hint = 1024
#apc.ttl = 0
#apc.user_ttl = 0
#apc.gc_ttl = 600
#apc.cache_by_default = 1
#apc.filters = "apc\.php$"
#apc.slam_defense = 0
#apc.use_request_time = 1
#this breaks server#apc.mmap_file_mask = /tmp/apc-yourusernamehere.XXXXXX OR /dev/zero
#apc.file_update_protection = 2
#apc.enable_cli = 0
#apc.max_file_size = 2M
#apc.stat = 1
#apc.write_lock = 1
#apc.report_autofilter = 0
#apc.include_once_override = 0
#apc.rfc1867 = 0
#apc.rfc1867_prefix = "upload_"
#apc.rfc1867_name = "APC_UPLOAD_PROGRESS"
#apc.rfc1867_freq = 0
#apc.localcache = 1
#apc.localcache.size = 512
#apc.coredump_unmap = 0
#apc.stat_ctime = 0




## end php cacheing

sudo apt-get install unzip p7zip -y;
sudo apt-get install lynx elinks -y;
sudo apt-get install rsync -y;

# UFW #
sudo ufw enable;
sudo ufw allow 22/tcp;
sudo ufw allow 80/tcp;
sudo ufw allow 443/tcp;
sudo ufw allow 443/tcp;  
sudo ufw allow 10000/tcp; # virtualmin
sudo ufw allow 20000/tcp; # usermin
sudo ufw allow 3306/tcp; # mysql


#apache mods
sudo a2enmod rewrite;
sudo a2enmod vhost_alias;
sudo /etc/init.d/apache2 restart;

###########################################################################
#GrSecurity
#You need to add this repository to your /etc/apt/sources.list:
#deb http://ubuntu.cr0.org/repo/ kernel-security/ or deb
#http://debian.cr0.org/repo/ kernel-security/

#Download the repository's gpg key, check it (it has been signed with my
#own GPG key) and use: apt-key add kernel-security.asc

#Afterwards you can use apt-get update and install the package by using
#apt-get install linux-image-grsec

###########################################################################

##ssl stuff
#See /usr/share/doc/apache2.2-common/README.Debian.gz on how to configure SSL and create self-signed certificates.
sudo apt-get install ssl-cert -y;
sudo a2ensite default-ssl;
sudo a2enmod ssl;
#breaks-zend?#sudo make-ssl-cert generate-default-snakeoil --force-overwrite
##breaks-zend?#sudo make-ssl-cert /usr/share/ssl-cert/ssleay.cnf /etc/ssl/certs/ssl-cert-snakeoil.pem   <---???


#<VirtualHost 192.168.100.115:443>
# DocumentRoot /home/web/youreeeka/beta/site/public
# ServerName beta.youreeeka.com
# ServerAlias beta.youreeeka.com
# ServerAdmin gavin@engel.com
# CustomLog /home/web/youreeeka/beta/logs/access_log combined
# ErrorLog /home/web/youreeeka/beta/logs/error_log
# <Directory /home/web/youreeeka/beta/site/public>
#  Options +Indexes FollowSymLinks
#  AllowOverride All
#  Order allow,deny
#  Allow from all
#  DirectoryIndex index.php
# </Directory>
# SSLEngine On
# SSLCertificateFile /etc/httpd/newssl/STAR.YOUREEEKA.COM.crt
# SSLCertificateKeyFile /etc/httpd/newssl/server.key
# SSLCertificateChainFile /etc/httpd/newssl/Apache_Plesk_Install.txt
#</VirtualHost>





#rootkit stuff
sudo apt-get install rkhunter -y;
sudo apt-get install chkrootkit -y;

#sudo rm /var/www/index.html;

#fin.
sudo apt-get autoremove -y;


# issues!
# apache2: Could not reliably determine the server's fully qualified domain name, using 108.166.122.111 for ServerName
# fix: # hostname your.fqdn.tld
