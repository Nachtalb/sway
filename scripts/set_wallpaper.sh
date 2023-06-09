#!/usr/bin/bash
ln -sf "$HOME/.config/sway/wallpapers/$(/usr/bin/ls -1 $HOME/.config/sway/wallpapers/ | shuf | head -n 1)" ~/.config/sway/.current_wallpaper
swaymsg output "*" background "$HOME/.config/sway/.current_wallpaper" fill
