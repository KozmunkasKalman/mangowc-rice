#! /bin/bash

killall waybar

case "$(grep 'rgba(0, 0, 0, 0.6)' ~/.config/waybar/style.css -c)" in
	1)
		sed -i 's/rgba(0, 0, 0, 0.6)/rgba(0, 0, 0, 0)/' ~/.config/waybar/style.css;;
	0)
		sed -i 's/rgba(0, 0, 0, 0)/rgba(0, 0, 0, 0.6)/' ~/.config/waybar/style.css;;
esac

waybar
