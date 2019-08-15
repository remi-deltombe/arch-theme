#!/bin/bash

# Install dependencies
echo ""
pacman -S --noconfirm --needed \
    xorg\
    xorg-xinit\
    xorg-xmodmap\
    i3-gaps\
    rxvt-unicode\
    zsh\
    git\
    wget\
    rofi\
    compton\
    vim\
    ranger\
    cmake\
    python2\
    pkg-config\
    python-sphinx\
    libmpdclient\
    make\
    fakeroot\
    i3lock-color

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install polybar
git clone https://aur.archlinux.org/polybar.git 2>/dev/null 
cd polybar
makepkg -i
cd ..

# Update theme
./update.sh

# Delete previous configs
rm -f ~/.vimrc 
rm -f ~/.zshrc
rm -f ~/.xinitrc
rm -f ~/.conkyrc

# Create symlink
ln -s ~/.config/vim ~/.vimrc
ln -s ~/.config/zsh ~/.zshrc
ln -s ~/.config/conky ~/.conkyrc
ln -s ~/.config/X11/init ~/.xinitrc
