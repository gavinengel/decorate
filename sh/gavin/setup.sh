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

