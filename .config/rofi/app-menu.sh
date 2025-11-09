#! /bin/bash

prompt=' '

option_1=" Brave / Quicklinks"
opt_1_cmd=~/.config/rofi/web-menu.sh

option_2=" Thunar"
opt_2_cmd='thunar'

option_3=" Kitty"
opt_3_cmd='kitty'

option_4=" GParu"
opt_4_cmd='kitty -e gparu'

option_5=" GIMP"
opt_5_cmd='gimp'

option_6=" OnlyOffice"
opt_6_cmd='onlyoffice-desktopeditors'

option_7=" Calculator"
opt_7_cmd='kitty -T Calculator -e calc'

option_8=" Tauon"
opt_8_cmd='tauon'

option_9=" Notes"
opt_9_cmd='kitty -T Notes -e nvim notes.txt'

option_10=" HTop"
opt_10_cmd='kitty -e htop'

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
