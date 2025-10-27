#! /bin/bash

killall waybar

case "$(grep '"margin-top": 12' ~/.config/waybar/config.jsonc -c)" in
	1)
		sed -i 's/"margin-top": 12/"margin-top": 0/' ~/.config/waybar/config.jsonc;;
	0)
		sed -i 's/"margin-top": 0/"margin-top": 12/' ~/.config/waybar/config.jsonc;;
esac

case "$(grep '"margin-left": 16' ~/.config/waybar/config.jsonc -c)" in
	1)
		sed -i 's/"margin-left": 16/"margin-left": 0/' ~/.config/waybar/config.jsonc;;
	0)
		sed -i 's/"margin-left": 0/"margin-left": 16/' ~/.config/waybar/config.jsonc;;
esac

case "$(grep '"margin-right": 16' ~/.config/waybar/config.jsonc -c)" in
	1)
		sed -i 's/"margin-right": 16/"margin-right": 0/' ~/.config/waybar/config.jsonc;;
	0)
		sed -i 's/"margin-right": 0/"margin-right": 16/' ~/.config/waybar/config.jsonc;;
esac

waybar
