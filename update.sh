#!/bin/bash

# Delete existing config
rm -rf ~/.theme 2> /dev/null
rm -rf ~/.config 2> /dev/null

# Copy folder
cp -r theme  ~/.theme
cp -r config/ ~/.config

# Apply theme
xrdb -I$HOME ~/.config/X11/resources
