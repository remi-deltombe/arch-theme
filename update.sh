#!/bin/bash

# Backup existing config
backup_dir=backup_$(date +%s)
mkdir $backup_dir

cp ~/.theme $backup_dir/ 2> /dev/null
cp ~/.config $backup_dir/ 2> /dev/null
cp  ~/.config/vim $backup_dir/ 2> /dev/null
cp  ~/.config/zsh $backup_dir/ 2> /dev/null
cp  ~/.config/X11/init $backup_dir/ 2> /dev/null

# Delete existing config
rm -rf ~/.theme 2> /dev/null
rm -rf ~/.config 2> /dev/null

# Copy folder
cp theme  ~/.theme
cp config/ ~/.config

# Apply theme
xrdb ~/.theme/X11/resources
xmodmap ~/.theme/X11/modmap