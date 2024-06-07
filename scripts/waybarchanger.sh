#!/bin/bash

option1="Borders"
option2="Slim"
option3="Round"
option4="Round 2"

options="$option1\n"
options="$options$option2\n"
options="$options$option3\n"
options="$options$option4"

hyprland_config="$HOME/.config/hypr/hyprland.conf"

choice=$(echo -e "$options" | wofi --dmenu --insensitive --sort-order alphabetical --lines 7 --width 500 --prompt "")

case "$choice" in
    "$option1")
        theme_folder="$HOME/.config/waybar/themes/Borders"
        sed -i 's|rounding = .*|rounding = 5|' "$hyprland_config"
        ;;
    "$option2")
        theme_folder="$HOME/.config/waybar/themes/Slim"
        sed -i 's|rounding = .*|rounding = 5|' "$hyprland_config"
        ;;
    "$option3")
        theme_folder="$HOME/.config/waybar/themes/Round"
        sed -i 's|rounding = .*|rounding = 13|' "$hyprland_config"
        ;;
    "$option4")
        theme_folder="$HOME/.config/waybar/themes/Round2"
        sed -i 's|rounding = .*|rounding = 13|' "$hyprland_config"
        ;;
esac

backup_folder="$HOME/.config/waybar/backup"
mkdir -p "$backup_folder"
cp $HOME/.config/waybar/config $HOME/.config/waybar/style.css "$backup_folder"

cp "$theme_folder/config" $HOME/.config/waybar/
cp "$theme_folder/style.css" $HOME/.config/waybar/

bash $HOME/scripts/kill.sh
