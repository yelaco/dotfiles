pacman -S git neovim

mkdir -p ~/.local/src && cd ~/local/src/ || exit
git clone https://github.com/yelaco/dwm
git clone https://github.com/yelaco/slstatus
git clone

cp editor.sh /etc/profile.d/editor.sh
chmod a+x /etc/profile.d/editor.sh
