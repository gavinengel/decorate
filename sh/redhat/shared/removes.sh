#sudo yum remove shotwell -y;
sudo yum remove evolution -y;
#
sudo yum remove thunderbird -y;

# clear unused files
#
sudo mkdir /tmp/clean-locale; sudo mv /usr/share/locale/en* /tmp/clean-locale; sudo rm -rf /usr/share/locale/*; sudo mv /tmp/clean-locale/* /usr/share/locale/; sudo rm -rf /tmp/clean-locale/;
#

# use freeoffice instead ( http://www.freeoffice.com/  )
#sudo yum remove libreoffice* -y;
