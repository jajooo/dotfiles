killall waybar 
if [[ $USER = "$USER" ]]
then
    waybar -c $HOME/.config/waybar/config -s $HOME/.config/waybar/style.css
else
    waybar &
fi