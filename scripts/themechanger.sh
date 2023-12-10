#!/bin/bash

option1="Lain Theme"
option2="Rei Theme"
option3="Minimal Theme"
option4="B&W Theme"

#hyprpaper_config="/home/jajo/.config/hypr/hyprpaper.conf"
hyprland_config="/home/jajo/.config/hypr/hyprland.conf"
rofi_config="/home/jajo/.config/rofi/config.rasi"
dunst_config="/home/jajo/.config/dunst/dunstrc"
qt5ct_config="/home/jajo/.config/qt5ct/qt5ct.conf"
qt6ct_config="/home/jajo/.config/qt6ct/qt6ct.conf"
kdeglobals_config="/home/jajo/.config/kdeglobals"

options="$option1\n"
options="$options$option2\n"
options="$options$option3\n"
options="$options$option4"

choice=$(echo -e "$options" | wofi --dmenu --insensitive --sort-order alphabetical --lines 7 --width 500 --prompt "")

case $choice in
    $option1)
        sleep 0.1
        wal -i /home/jajo/Wallpapers/lain3.jpg --saturate 0.2
        swww init
        swww img Wallpapers/lain3.jpg -t wipe --transition-fps 60
        sed -i 's|col.active_border = .*|col.active_border = rgba(9e6e6dee) rgba(9e6e6dee) 45deg|' "$hyprland_config"
        sed -i 's|col.inactive_border = .*|col.inactive_border = rgba(5f3f3fee)|' "$hyprland_config"
        sed -i 's|b-color: .*|b-color: #030000;|' "$rofi_config"
        sed -i 's|fg-color: .*|fg-color: #9e6e6d;|' "$rofi_config"
        sed -i 's|background = .*|background = "#030000"|' "$dunst_config"
        sed -i 's|foreground = .*|foreground = "#a16766"|' "$dunst_config"
        sed -i 's|frame_color = .*|frame_color = "#a16766"|' "$dunst_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt5ct/colors/Lain.conf|' "$qt5ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-Brown|' "$qt5ct_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt6ct/colors/Lain.conf|' "$qt6ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-Brown|' "$qt6ct_config"
        sed -i 's|BackgroundNormal=.*|BackgroundNormal=#030000|' "$kdeglobals_config"
        pkill dunst
        dunst
        bash /home/jajo/Waybar/kill.sh
        ;;
    $option2)
        sleep 0.1
        wal -i /home/jajo/Wallpapers/rei.png --saturate 0.2 
        swww init
        swww img Wallpapers/rei.png -t wipe --transition-fps 60
        sed -i 's|col.active_border = .*|col.active_border = rgba(afb7c9ee) rgba(afb7c9ee) 45deg|' "$hyprland_config"
        sed -i 's|col.inactive_border = .*|col.inactive_border = rgba(596e85ee)|' "$hyprland_config"
        sed -i 's|b-color: .*|b-color: #191c20;|' "$rofi_config"
        sed -i 's|fg-color: .*|fg-color: #afb7c9;|' "$rofi_config"
        sed -i 's|background = .*|background = "#191c20"|' "$dunst_config"
        sed -i 's|foreground = .*|foreground = "#afb7c9"|' "$dunst_config"
        sed -i 's|frame_color = .*|frame_color = "#afb7c9"|' "$dunst_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt5ct/colors/Rei.conf|' "$qt5ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-BlueGrey|' "$qt5ct_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt6ct/colors/Rei.conf|' "$qt6ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-BlueGrey|' "$qt6ct_config"
        sed -i 's|BackgroundNormal=.*|BackgroundNormal=#191c20|' "$kdeglobals_config"
        pkill dunst
        dunst
        bash /home/jajo/Waybar/kill.sh
        ;;
    $option3)
        sleep 0.1
        wal -i /home/jajo/Wallpapers/minimal.jpg --saturate 0.5 
        swww init
        swww img Wallpapers/minimal.jpg -t wipe --transition-fps 60
        sed -i 's|col.active_border = .*|col.active_border = rgba(d9dee5ee) rgba(d9dee5ee) 45deg|' "$hyprland_config"
        sed -i 's|col.inactive_border = .*|col.inactive_border = rgba(9db4beee)|' "$hyprland_config"
        sed -i 's|b-color: .*|b-color: #102130;|' "$rofi_config"
        sed -i 's|fg-color: .*|fg-color: #d9dee5;|' "$rofi_config"
        sed -i 's|background = .*|background = "#102130"|' "$dunst_config"
        sed -i 's|foreground = .*|foreground = "#d9dee5"|' "$dunst_config"
        sed -i 's|frame_color = .*|frame_color = "#d9dee5"|' "$dunst_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt5ct/colors/Minimal.conf|' "$qt5ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-Blue|' "$qt5ct_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt6ct/colors/Minimal.conf|' "$qt6ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-Blue|' "$qt6ct_config"
        sed -i 's|BackgroundNormal=.*|BackgroundNormal=#102130|' "$kdeglobals_config"
        pkill dunst
        dunst
        bash /home/jajo/Waybar/kill.sh
        ;;
    $option4)
        sleep 0.1
        wal -i /home/jajo/Wallpapers/baw.jpg --saturate 0.0
        swww init
        swww img Wallpapers/baw.jpg -t wipe --transition-fps 60
        sed -i 's|col.active_border = .*|col.active_border = rgba(f4efefee) rgba(f4efefee) 45deg|' "$hyprland_config"
        sed -i 's|col.inactive_border = .*|col.inactive_border = rgba(050505ee)|' "$hyprland_config"
        sed -i 's|b-color: .*|b-color: #050505;|' "$rofi_config"
        sed -i 's|fg-color: .*|fg-color: #f4efef;|' "$rofi_config"
        sed -i 's|background = .*|background = "#050505"|' "$dunst_config"
        sed -i 's|foreground = .*|foreground = "#f4efef"|' "$dunst_config"
        sed -i 's|frame_color = .*|frame_color = "#f4efef"|' "$dunst_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt5ct/colors/BAW.conf|' "$qt5ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-Grey|' "$qt5ct_config"
        sed -i 's|color_scheme_path=.*|color_scheme_path=/home/jajo/.config/qt6ct/colors/BAW.conf|' "$qt6ct_config"
        sed -i 's|icon_theme=.*|icon_theme=Archdroid-Grey|' "$qt6ct_config"
        sed -i 's|BackgroundNormal=.*|BackgroundNormal=#050505|' "$kdeglobals_config"
        pkill dunst
        dunst
        bash /home/jajo/Waybar/kill.sh
        ;;        
esac
