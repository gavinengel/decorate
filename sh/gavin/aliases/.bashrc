LOADED_BASHRC=1;

if [ -z "$LOADED_BASH_PROFILE" ]; then
	if [ -f ~/.bash_profile ]; then
		. ~/.bash_profile
	fi
fi
