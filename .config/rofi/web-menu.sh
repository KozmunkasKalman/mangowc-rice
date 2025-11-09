#! /bin/bash

prompt=' '

option_1=" Web Browser (Brave)"
opt_1_cmd='brave'

option_2="•  YouTube"
opt_2_cmd='xdg-open https://www.youtube.com'

option_3="•  Github"
opt_3_cmd='xdg-open https://github.com/'

option_4="•  Discord"
opt_4_cmd='xdg-open https://discord.com/channels/@me'

option_5="• 󰋾 Instagram"
opt_5_cmd='xdg-open https://www.instagram.com'

option_6="•  Reddit"
opt_6_cmd='xdg-open https://www.reddit.com/'

option_7="•  𝕏itter"
opt_7_cmd='xdg-open https://x.com'

option_8="•  Facebook &  Messenger"
opt_8_cmd='xdg-open https://www.facebook.com/'

option_9="•  A Biblia Mindenkié"
opt_9_cmd='xdg-open https://abibliamindenkie.hu/'

option_10="• Я Yandex"
opt_10_cmd='xdg-open https://yandex.com/'


rofi_cmd() {
	rofi \
        -theme ~/.config/rofi/style.rasi \
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
