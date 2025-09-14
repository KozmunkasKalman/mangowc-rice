#! /bin/bash

paru -qlS | fzf --multi --preview "paru -Sii {1}" --preview-window=right:75% | xargs -ro paru -S
