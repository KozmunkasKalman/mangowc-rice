#! /bin/bash

image=~/Pictures/Wallpapers/\
$(find ~/Pictures/Wallpapers/* -type f -printf '%f\n' | \
rofi -theme ~/.config/rofi/style.rasi -dmenu -p '󰥷 ' -i) && \
swww img --transition-type fade --transition-step 255 --transition-duration 3 "$image" && \
sed -i 's|path = *.* #wallpaper|path = '$image' #wallpaper|' ~/.config/hypr/hyprlock.conf
