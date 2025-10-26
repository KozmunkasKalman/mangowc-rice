#! /bin/bash

prompt=' '

option_1=" Brave"
opt_1_cmd='brave'

option_2=" Thunar"
opt_2_cmd='thunar'

option_3=" Kitty"
opt_3_cmd='kitty'

option_4=" GIMP"
opt_4_cmd='gimp'

option_5=" OnlyOffice"
opt_5_cmd='onlyoffice-desktopeditors'

option_6=" Strawberry"
opt_6_cmd='strawberry'

option_7=" GParu"
opt_7_cmd='kitty -e /home/anon/scripts/gparu.sh'

option_8=" HTop"
opt_8_cmd='kitty -e htop'

rofi_cmd() {
	rofi \
        -theme ~/.config/rofi/style.rasi \
        -dmenu \
	-p "$prompt" \
	-sep ',' \
	-i
}

run_rofi() {
	printf "$option_1,$option_2,$option_3,$option_4,$option_5,$option_6,$option_7,$option_8" | rofi_cmd
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
esac
