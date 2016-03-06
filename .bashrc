LOADED_BASHRC=1;

if [ -z "$LOADED_BASH_PROFILE" ]; then
	if [ -f ~/.bash_profile ]; then
		. ~/.bash_profile
	fi
fi

export NVM_DIR="/home/gavin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
