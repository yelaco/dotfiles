# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# Added by Toolbox App
export PATH="$PATH:/home/yelaco/.local/share/JetBrains/Toolbox/scripts"

. "$HOME/.cargo/env"
