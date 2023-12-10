#!/bin/bash

config_file="/etc/cpupower_gui.conf"

performance_mode="Performance"
balanced_mode="Balanced"

current_mode=$(grep -oP '(?<=profile = ).*' "$config_file")

if [ "$current_mode" == "$performance_mode" ]; then
    replace_string="$balanced_mode"
else
    replace_string="$performance_mode"
fi

sed -i "s/profile = .*/profile = $replace_string/g" "$config_file"
 
