#!/usr/bin/env bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
RESET="${NORMAL}${NC}"

printf "\n${BOLD}${GREEN}Installing system dependencies"

installer='paru'

if ! [ -x "$(command -v paru)" ]; then
  if ! [ -x "$(command -v yay)" ]; then
    printf "\n${BOLD}${RED}Couldn't find neither 'yay' nor 'paru' to install" \
      " dependencies from AUR. Exiting.${RESET}\n"
    exit
  fi
  installer='yay'
fi


printf "\n${GREEN}${BOLD}Installing system dependencies with '${installer}'.${RESET}\n"
$installer -Sy sway swaybg swayidle swaylock swaylock-blur-bin go rofi mako pm grim slurp python-pywal waybar foot ranger feh ueberzugpp protonvpn --needed

printf "\n${GREEN}${BOLD}Installing GO dependencies.${RESET}\n"
go get github.com/sirupsen/logrus
go get github.com/Difrex/gosway/ipc

printf "\n${GREEN}${BOLD}Symlinking default config.${RESET}\n"

# sway
ln  -s  ~/.config/sway/conf-available/workspaces.conf           ~/.config/sway/conf-enabled/00-workspaces.conf
ln  -s  ~/.config/sway/conf-available/autostart.conf            ~/.config/sway/conf-enabled/01-autostart.conf
ln  -s  ~/.config/sway/conf-available/fonts.conf                ~/.config/sway/conf-enabled/02-fonts.conf
ln  -s  ~/.config/sway/conf-available/keybindings.conf          ~/.config/sway/conf-enabled/03-keybindings.conf
ln  -s  ~/.config/sway/conf-available/layout.conf               ~/.config/sway/conf-enabled/04-key-layout.conf
ln  -s  ~/.config/sway/conf-available/terminal-dark.conf        ~/.config/sway/conf-enabled/05-terminal.conf
ln  -s  ~/.config/sway/conf-available/colors-dark.conf          ~/.config/sway/conf-enabled/20-colors.conf
ln  -s  ~/.config/sway/conf-available/gaps.conf                 ~/.config/sway/conf-enabled/30-gaps.conf
ln  -s  ~/.config/sway/conf-available/idle.conf                 ~/.config/sway/conf-enabled/40-idle.conf
ln  -s  ~/.config/sway/conf-available/screenshots.conf          ~/.config/sway/conf-enabled/50-screenshots.conf
ln  -s  ~/.config/sway/conf-available/wallpapers.conf           ~/.config/sway/conf-enabled/80-wallpapers.conf
ln  -s  ~/.config/sway/conf-available/colors-dark.conf          ~/.config/sway/conf-enabled/colors-dark.conf
ln  -s  ~/.config/sway/conf-available/mako-dark.conf            ~/.config/sway/conf-enabled/mako-dark.conf
ln  -s  ~/.config/sway/conf-available/terminal-dark.conf        ~/.config/sway/conf-enabled/terminal-dark.conf
ln  -s  ~/.config/sway/conf-available/transparent-windows.conf  ~/.config/sway/conf-enabled/transparent-windows.conf

# waybar
ln  -s  ~/.config/sway/waybar-available/config          ~/.config/sway/waybar-enabled/config
ln  -s  ~/.config/sway/waybar-available/style-dark.css  ~/.config/sway/waybar-enabled/style.css

printf "\n${GREEN}${BOLD}Building GO components.${RESET}\n"
cd scripts && go build -o ~/.local/bin/tr_in transparent_inctive.go

printf "\n${GREEN}${BOLD}Installing 'ranger' addons.${RESET}\n"
ranger --copy-config all
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "# File icons
default_linemode devicons

# Image preview
set preview_images true
set preview_images_method ueberzug" >> ~/.config/ranger/rc.conf`

printf "\n${GREEN}${BOLD}Configure 'foot' (terminal).${RESET}\n"
mkdir ~/.config/foot -p
ln -s ~/.config/sway/foot/foot.ini ~/.config/foot/

printf "\n${GREEN}${BOLD}Done installing, you have to relogin now.${RESET}\n"
