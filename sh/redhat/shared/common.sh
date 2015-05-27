#/bin/sh

yum install sudo -y;

#todo, what is yum equivalent#sudo apt-get update;

sudo yum install yum-plugin-fastestmirror -y;

sudo yum install vi vim nano wget ack unzip mlocate -y;

sudo yum install php-cli -y;
sudo yum install clamav -y;
sudo yum install tree p7zip -y;
sudo yum install subversion -y;
sudo yum install git-core -y;

# assorted stuff
sudo yum install whois rpl ps_mem -y;

# composer ..
sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/tmp;
sudo mv /tmp/composer.phar /usr/local/bin/composer;

# ... then drush
/usr/local/bin/composer global require drush/drush:dev-master; # no sudo
#nah... sudo cp -R ~/.composer /opt/;
#nah... sudo ln -s /opt/.composer/vendor/drush/drush/drush /usr/local/bin;

# userspace package installers:
sudo yum install ruby-devel rubygems gcc glibc-devel -y; # gcc & glibc-devel for ruby gems

# for multiple php per http://www.lornajane.net/posts/2014/running-multiple-versions-of-php
sudo yum install libxml2-devel -y; 

# EPEL and node
sudo yum install epel-release -y;



# 
#/home/gavin/Dropboxes/scripts/droppers/yum-removes.sh;
#
