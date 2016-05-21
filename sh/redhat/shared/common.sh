#/bin/sh

#dnf install sudo -y;

#todo, what is yum equivalent#sudo apt-get update;

sudo dnf install yum-plugin-fastestmirror -y;

sudo dnf install vi vim nano wget ack unzip mlocate -y;

sudo dnf install php-cli -y;
sudo dnf install clamav -y;
sudo dnf install tree p7zip -y;
sudo dnf install subversion -y;
sudo dnf install git-core -y;
sudo dnf install gcc-c++;


# assorted stuff
sudo dnf install whois rpl ps_mem -y;

# composer ..
sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/tmp;
sudo mv /tmp/composer.phar /usr/local/bin/composer;

# ... then drush
/usr/local/bin/composer global require drush/drush:dev-master; # no sudo
#nah... sudo cp -R ~/.composer /opt/;
#nah... sudo ln -s /opt/.composer/vendor/drush/drush/drush /usr/local/bin;

# userspace package installers:
sudo dnf install ruby-devel rubygems gcc glibc-devel -y; # gcc & glibc-devel for ruby gems

# for multiple php per http://www.lornajane.net/posts/2014/running-multiple-versions-of-php
sudo dnf install libxml2-devel -y; 

# EPEL and node
sudo dnf install epel-release -y;
sudo dnf install nodejs npm -y; 



# 
#/home/gavin/Dropboxes/scripts/droppers/yum-removes.sh;
#
