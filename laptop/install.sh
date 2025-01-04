INSTALL_DIR="$(pwd)"
SOURCE_DIR="$HOME/.local/src"

# Dependencies
sudo pacman -S --needed git base-devel xorg-server
sudo pacman -S neovim \
	autoconf \
	cairo \
	fontconfig \
	gcc \
	libev \
	libjpeg-turbo \
	libxinerama \
	libxkbcommon-x11 \
	libxrandr \
	pam \
	pkgconf \
	xcb-util-image \
	xcb-util-xrm

# Sources
mkdir -p "$SOURCE_DIR" && cd "$SOURCE_DIR" || exit
git clone https://aur.archlinux.org/yay.git
git clone https://github.com/yelaco/dwm
git clone https://github.com/yelaco/slstatus
git clone https://github.com/Raymo111/i3lock-color.git

### BUILD ###
# yay
cd "$SOURCE_DIR"/yay || exit
sudo makepkg -si

# dwm
cd "$SOURCE_DIR"/dwm || exit
sudo make install

# slstatus
cd "$SOURCE_DIR"/slstatus || exit
sudo make install

# i3lock-color
cd "$SOURCE_DIR"/i3lock-color || exit
./install-i3lock-color.sh
sudo cp lock /usr/bin/
sudo chmod +x /usr/bin/lock

### INSTALLATION ###
yay -S nerd-fonts noto-fonts

### ADDITIONALS ###
cd "$INSTALL_DIR" || exit
cp .xprofile \
	.xsession \
	.bash* \
	.tmux.conf \
	"$HOME/"
cp -r config/* "$HOME"/.config/
sudo cp editor.sh /etc/profile.d/editor.sh
sudo chmod a+x /etc/profile.d/editor.sh
