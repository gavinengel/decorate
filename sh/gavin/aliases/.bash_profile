# .bash_profile
LOADED_BASH_PROFILE=1;

# Get the aliases and functions
if [ -z "$LOADED_BASHRC" ]; then
	if [ -f ~/.bashrc ]; then
		. ~/.bashrc
	fi
fi

source ~/.sh_common;


# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
