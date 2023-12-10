#!/bin/bash

option1="Borders"
option2="Slim"

options="$option1\n"
options="$options$option2"

choice=$(echo -e "$options" | wofi --dmenu --insensitive --sort-order alphabetical --lines 6 --width 500 --prompt "")

case "$choice" in
    "$option1")
        theme_folder="/home/jajo/.config/waybar/themes/Borders"
        ;;
    "$option2")
        theme_folder="/home/jajo/.config/waybar/themes/Slim"
        ;;
esac

backup_folder="/home/jajo/.config/waybar/backup"
mkdir -p "$backup_folder"
cp /home/jajo/.config/waybar/config /home/jajo/.config/waybar/style.css "$backup_folder"

cp "$theme_folder/config" /home/jajo/.config/waybar/
cp "$theme_folder/style.css" /home/jajo/.config/waybar/

bash /home/jajo/Waybar/kill.sh
