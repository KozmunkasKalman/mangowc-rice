#! /bin/bash

read -p "$(printf 'What would you like to do?\n[I]nstall, [U]pdate, [R]emove, e[X]it\n> ')" action &&

case "$action" in
  u) paru -Syu;;
  i) paru -qlS | fzf --multi --preview "paru -Sii {1}" --preview-window=right:75% | xargs -ro paru -S;;
  r) paru -qQ | fzf --multi --preview "paru -Sii {1}" --preview-window=right:75% | xargs -ro paru -R;;
  x) exit;;
esac
