#!/usr/bin/env bash
go get github.com/sirupsen/logrus
go get github.com/Difrex/gosway/ipc
paru -Sy sway swaybg swayidle swaylock swaylock-blur-bin go rofi mako pm grim slurp python-pywal
ln  -s  $HOME/.config/sway/conf-available/workspaces.conf           $HOME/.config/sway/conf-enabled/00-workspaces.conf
ln  -s  $HOME/.config/sway/conf-available/autostart.conf            $HOME/.config/sway/conf-enabled/01-autostart.conf
ln  -s  $HOME/.config/sway/conf-available/fonts.conf                $HOME/.config/sway/conf-enabled/02-fonts.conf
ln  -s  $HOME/.config/sway/conf-available/keybindings.conf          $HOME/.config/sway/conf-enabled/03-keybindings.conf
ln  -s  $HOME/.config/sway/conf-available/layout.conf               $HOME/.config/sway/conf-enabled/04-key-layout.conf
ln  -s  $HOME/.config/sway/conf-available/terminal-dark.conf        $HOME/.config/sway/conf-enabled/05-terminal.conf
ln  -s  $HOME/.config/sway/conf-available/colors-dark.conf          $HOME/.config/sway/conf-enabled/20-colors.conf
ln  -s  $HOME/.config/sway/conf-available/gaps.conf                 $HOME/.config/sway/conf-enabled/30-gaps.conf
ln  -s  $HOME/.config/sway/conf-available/idle.conf                 $HOME/.config/sway/conf-enabled/40-idle.conf
ln  -s  $HOME/.config/sway/conf-available/screenshots.conf          $HOME/.config/sway/conf-enabled/50-screenshots.conf
ln  -s  $HOME/.config/sway/conf-available/wallpapers.conf           $HOME/.config/sway/conf-enabled/80-wallpapers.conf
ln  -s  $HOME/.config/sway/conf-available/colors-dark.conf          $HOME/.config/sway/conf-enabled/colors-dark.conf
ln  -s  $HOME/.config/sway/conf-available/mako-dark.conf            $HOME/.config/sway/conf-enabled/mako-dark.conf
ln  -s  $HOME/.config/sway/conf-available/terminal-dark.conf        $HOME/.config/sway/conf-enabled/terminal-dark.conf
ln  -s  $HOME/.config/sway/conf-available/transparent-windows.conf  $HOME/.config/sway/conf-enabled/transparent-windows.conf

ln  -s  $HOME/.config/sway/waybar-available/config          $HOME/.config/sway/waybar-enabled/config
ln  -s  $HOME/.config/sway/waybar-available/style-dark.css  $HOME/.config/sway/waybar-enabled/style.css
