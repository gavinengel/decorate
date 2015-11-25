#/bin/sh

sudo apt-get update;

# u better have this fool
sudo apt-get install vim rpl -y; # leave off 'vi'

#gets gtk as well!# sudo apt-get install clamav clamtk -y;
#gets gtk as well!# sudo apt-get install nmap zenmap -y;
sudo apt-get install tree rar -y;
sudo apt-get install subversion -y;
sudo apt-get install locate -y;
sudo apt-get install git-core -y;
sudo apt-get install php5-cli -y;

# assorted stuff
sudo apt-get install whois -y;
sudo apt-get install ack-grep -y;sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep;
sudo apt-get install ruby ruby-dev -y;
sudo apt-get install g++ -y;
