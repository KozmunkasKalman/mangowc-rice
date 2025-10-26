#! /bin/bash

read -N 1 -p "$(printf 'What would you like to do?\n[I]nstall packages, [U]pdate packages, [R]emove pacakges, [C]lear cache\n> ')" action &&

case "$action" in
  u) paru -Syu;;
  i) paru -qlS | fzf --multi --preview "paru -Sii {1}" --preview-window=right:75% | xargs -ro -I input sh -c 'echo ": input"; paru -S input';;
  r) paru -qQ | fzf --multi --preview "paru -Sii {1}" --preview-window=right:75% | xargs -ro -I input sh -c 'echo ": input"; paru -R input';;
  c) paru -Scc;;
esac
