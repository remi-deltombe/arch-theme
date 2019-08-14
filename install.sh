#!/bin/bash

# Install dependencies
echo ""
pacman -S --no-confirm --needed \
    xorg\
    xorg-xinit\
    i3-gaps\
    rxvt-unicode\
    zsh\
    git\
    wget\
    rofi\
    compton\
    vim\
    ranger

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Update theme
./update.sh

# Delete previous configs

# Create symlink
ln -s ~/.config/vim ~/.vimrc
ln -s ~/.config/zsh ~/.zshrc
ln -s ~/.config/X11/init ~/.xinitrc