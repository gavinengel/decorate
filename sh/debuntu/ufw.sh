#!/bin/sh

sudo ufw default deny incoming;
sudo ufw default deny outgoing;
sudo ufw allow ssh;
sudo ufw allow http; 
sudo ufw allow www;
sudo ufw allow 2525/tcp; # mailtrap.io
sudo ufw allow 9418;     # git
sudo ufw allow out http;
sudo ufw allow out 22;
sudo ufw allow out 53;
sudo ufw allow out 443;

# dev ports, for various services
# Harpjs = 9000
#sudo ufw allow 9000:9000/tcp;
#sudo ufw allow 9000:9000/udp;

sudo ufw limit ssh/tcp;  #Limit connections to ssh/tcp to slowdown possible attacks
#sudo ufw logging on
sudo ufw enable;
