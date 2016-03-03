#!/bin/sh

sudo ufw default deny incoming;
sudo ufw default deny outgoing;
sudo ufw allow ssh;
sudo ufw allow http;
sudo ufw allow www;
sudo ufw allow 2525/tcp; # mailtrap.io
sudo ufw enable;
