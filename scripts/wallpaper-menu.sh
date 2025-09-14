#! /bin/bash

swww img --transition-type fade --transition-step 255 --transition-duration 3 \
~/Pictures/Wallpapers/\
"$( \
find ~/Pictures/Wallpapers/* -type f -printf '%f\n' | \
rofi -theme ~/.config/rofi/style.rasi -dmenu -p '󰥷 ' -i \
)"
