# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

export EDITOR=nvim
export VISUAL=nvim

. "$HOME/.cargo/env"

export PATH=$PATH:/home/yelaco/.spicetify
