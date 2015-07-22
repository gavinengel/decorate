#!/bin/sh

git config --global user.name "Gavin Engel"
git config --global user.email gavin@engel.com

sudo adduser -m gavin;

ln -s ~/decorate/sh/gavin/aliases/.bash_profile ~/;
ln -s ~/decorate/sh/gavin/aliases/.sh_common ~/;
ln -s ~/decorate/sh/gavin/aliases/.sh_custom ~/;
ln -s ~/decorate/sh/gavin/aliases/.bash_common ~/;
ln -s ~/decorate/sh/gavin/aliases/.bash_custom ~/;
ln -s ~/decorate/sh/gavin/aliases/.zsh_common ~/;
ln -s ~/decorate/sh/gavin/aliases/.zsh_custom ~/;
## then, add to end of .zshrc and .bash_profile:
# source ~/.sh_common


npm config set init.author.name "Gavin Engel"
npm config set init.author.email gavin@engel.com 
npm config set init.author.url http://www.gavinengel.com/
npm config set init.license MIT

