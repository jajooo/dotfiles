#!/bin/bash

option1="Borders"
option2="Slim"

options="$option1\n"
options="$options$option2"

choice=$(echo -e "$options" | wofi --dmenu --insensitive --sort-order alphabetical --lines 6 --width 500 --prompt "")

case "$choice" in
    "$option1")
        theme_folder="$HOME/.config/waybar/themes/Borders"
        ;;
    "$option2")
        theme_folder="$HOME/.config/waybar/themes/Slim"
        ;;
esac

backup_folder="$HOME/.config/waybar/backup"
mkdir -p "$backup_folder"
cp $HOME/.config/waybar/config $HOME/.config/waybar/style.css "$backup_folder"

cp "$theme_folder/config" $HOME/.config/waybar/
cp "$theme_folder/style.css" $HOME/.config/waybar/

bash $HOME/scripts/kill.sh
