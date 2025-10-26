#! /bin/bash

prompt=' '

option_1="Master (Right Vertical Stack)"
opt_1_cmd='mmsg -l T'

option_2="Master (Left Vertical Stack)"
opt_2_cmd='mmsg -l RT'

option_3="Master (Horizontal Stack)"
opt_3_cmd='mmsg -l VT'

option_4="Master (Lateral Stack)"
opt_4_cmd='mmsg -l CT'

option_5="Vertical Deck"
opt_5_cmd='mmsg -l K'

option_6="Horizontal Deck"
opt_6_cmd='mmsg -l VK'

option_7="Stack (Monocle)"
opt_7_cmd='mmsg -l M'

option_8="Vertical Grid"
opt_8_cmd='mmsg -l G'

option_9="Horizontal Grid"
opt_9_cmd='mmsg -l VG'

option_10="Scroller (Horizontal)"
opt_10_cmd='mmsg -l S'

option_11="Scroller (Vertical)"
opt_11_cmd='mmsg -l VS'

rofi_cmd() {
	rofi \
        -theme ~/.config/rofi/layouts-style.rasi \
        -dmenu \
	-p "$prompt" \
	-sep ',' \
	-i
}

run_rofi() {
	printf "$option_1,$option_2,$option_3,$option_4,$option_5,$option_6,$option_7,$option_8,$option_9,$option_10,$option_11" | rofi_cmd
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
	$option_11) ${opt_11_cmd};;
esac
