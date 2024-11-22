# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# Added by Toolbox App
export PATH="$PATH:/home/yelaco/.local/share/JetBrains/Toolbox/scripts"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/home/yelaco/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

. "$HOME/.cargo/env"
