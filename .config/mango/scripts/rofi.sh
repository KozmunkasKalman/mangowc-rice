#! /bin/bash

prompt=' '

web_cmd='brave'
term_cmd='kitty'
file_cmd='thunar'
music_cmd='kitty -e mpv "$(find ~/Music/ | fzf -m)"'
setting_cmd='nwg-look'

option_1=" Web Browser"
option_2=" File Manager"
option_3=" Terminal"
option_4=" Music"
option_5=" Settings"

rofi_cmd() {
	rofi \
        -dmenu \
        -theme ~/.config/rofi/style.rasi \
	-p "$prompt"
}

run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3\n$option_4\n$option_5\n$option_6" | rofi_cmd
}

run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		${web_cmd}
	elif [[ "$1" == '--opt2' ]]; then
		${file_cmd}
	elif [[ "$1" == '--opt3' ]]; then
		${term_cmd}
	elif [[ "$1" == '--opt4' ]]; then
		${music_cmd}
	elif [[ "$1" == '--opt5' ]]; then
		${setting_cmd}
	fi
}

chosen="$(run_rofi)"
case ${chosen} in
	$option_1)
		run_cmd --opt1;;
	$option_2)
		run_cmd --opt2;;
	$option_3)
		run_cmd --opt3;;
	$option_4)
		run_cmd --opt4;;
	$option_5)
		run_cmd --opt5;;
	*)
		${kitty};;
esac
