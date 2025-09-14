#! /bin/bash

prompt=' '

option_1=" Web Browser (Brave)"
opt_1_cmd='brave'

option_2=" File Manager (Thunar)"
opt_2_cmd='thunar'

option_3=" Terminal (Kitty)"
opt_3_cmd='kitty'

option_4=" Image Editor (GIMP)"
opt_4_cmd='gimp'

option_5=" Office (LibreOffice)"
opt_5_cmd='libreoffice'

option_6=" Music Player (Kew)"
opt_6_cmd='kitty -e kew'

option_7="󰙽 DAW (LMMS)"
opt_7_cmd='lmms'

option_8=" Package Manager (GParu)"
opt_8_cmd='kitty -e /home/anon/scripts/gparu.sh'

option_9=" System Monitor (HTop)"
opt_9_cmd='kitty -e htop'

option_10=" GTK Settings (NWG)"
opt_10_cmd='nwg-look'

rofi_cmd() {
	rofi \
        -theme ~/.config/rofi/menu-style.rasi \
        -dmenu \
	-p "$prompt" \
	-sep ',' \
	-i
}

run_rofi() {
	printf "$option_1,$option_2,$option_3,$option_4,$option_5,$option_6,$option_7,$option_8,$option_9,$option_10" | rofi_cmd
}

case "$(run_rofi)" in
	$option_1) ${opt_1_cmd};;
	$option_2) ${opt_2_cmd};;
	$option_3) ${opt_3_cmd};;
	$option_4) ${opt_4_cmd};;
	$option_5) ${opt_5_cmd};;
	$option_6) ${opt_6_cmd};;
	$option_7) ${opt_7_cmd};;
	$option_8) ${opt_8_cmd};;
	$option_9) ${opt_9_cmd};;
	$option_10) ${opt_10_cmd};;
esac
