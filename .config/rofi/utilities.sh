#! /bin/bash

prompt=' '

option_1=" Take Screenshot"
opt_1_cmd=~/scripts/screenshot-selection.sh

option_2="󰥷 Select Wallpaper"
opt_2_cmd=~/scripts/wallpaper-menu.sh

option_3=" Light Filter"
opt_3_cmd=~/scripts/wlsunset-toggle.sh

option_4=" Layouts"
opt_4_cmd=~/scripts/layouts.sh

option_5="󰚠 Transparency"
opt_5_cmd=~/scripts/waybar-transparency.sh

option_6=" Gaps"
opt_6_cmd=~/scripts/waybar-gaps.sh

option_7="⭘ Actions"
opt_7_cmd=~/.config/rofi/power-menu.sh

rofi_cmd() {
	rofi \
        -theme ~/.config/rofi/style.rasi \
        -dmenu \
	-p "$prompt" \
	-sep ',' \
	-i
}

run_rofi() {
	printf "$option_1,$option_2,$option_3,$option_4,$option_5,$option_6,$option_7," | rofi_cmd
}

case "$(run_rofi)" in
	$option_1) ${opt_1_cmd};;
	$option_2) ${opt_2_cmd};;
	$option_3) ${opt_3_cmd};;
	$option_4) ${opt_4_cmd};;
	$option_5) ${opt_5_cmd};;
	$option_6) ${opt_6_cmd};;
	$option_7) ${opt_7_cmd};;
esac
