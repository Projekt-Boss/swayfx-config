#!/bin/bash
rsync -av --delete ~/.config/alacritty/ ~/Documents/gitRepo/alacritty/
rsync -av --delete ~/.config/waybar/ ~/Documents/gitRepo/waybar/
rsync -av --delete ~/.config/wofi/ ~/Documents/gitRepo/wofi/
rsync -av --delete ~/.config/sway/ ~/Documents/gitRepo/sway/
rsync -av --delete ~/.bashrc.d/ ~/Documents/gitRepo/bashrc.d/


echo "Dotfiles synced ✔"
