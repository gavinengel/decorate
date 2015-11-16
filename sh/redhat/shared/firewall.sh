#!/bin/sh

sudo firewall-cmd --zone=public --add-port=80/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=81/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=443/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=1000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=2000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=4000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=5000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=6000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=7000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=8000/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent;
sudo firewall-cmd --zone=public --add-port=9000/tcp --permanent;

sudo firewall-cmd --reload;
