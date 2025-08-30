#! /bin/bash

prompt=' '

option_1=" Web Browser"
opt_1_cmd='brave'

option_2=" File Manager"
opt_2_cmd='thunar'

option_3=" Terminal"
opt_3_cmd='kitty'

option_4=" Music Player"
opt_4_cmd='kitty -e kew'

option_5=" Image Editor"
opt_5_cmd='gimp'

option_6=" System Monitor"
opt_6_cmd='kitty -e htop'

option_7=" GTK Settings"
opt_7_cmd='nwg-look'

rofi_cmd() {
	rofi \
        -theme ~/.config/rofi/style.rasi \
        -dmenu \
	-p "$prompt" \
	-sep ','
	-i
}

run_rofi() {
	printf "$option_1,$option_2,$option_3,$option_4,$option_5,$option_6,$option_7" | rofi_cmd
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
