PS1="\u \w \$ "

export EDITOR='vim'
export VISUAL='vim'
export TERM='kitty'
export TERMINAL='kitty'
export TERMINAL_PROG='kitty'
export BROWSER='brave'

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias mkd='mkdir -pv'

alias ls='ls -Nh --color=auto --group-directories-first'
alias la='ls -ANh --color=auto --group-directories-first'
alias ll='ls -lANh --color=auto --group-directories-first'

alias grep='grep --color=auto'

alias targx='tar -xvzf'
alias tarx='tar -xvJf'

alias quit='exit'

alias fim='vim "$(find | fzf --preview "cat {}")"'

alias del='rm -Irv "$(find | fzf -m)"'

#for arch
alias s='paru -S'
alias u='paru -Syu'
alias r='paru -R'

#for nixos
alias rebuildsys='sudo nixos-rebuild switch --flake /etc/nixos#default'
alias updateflakelock='cd /etc/nixos/ && nix flake update && cd -'
alias cleanup='sudo nix-collect-garbage'
alias editconfig='$EDITOR /etc/nixos/configuration.nix'
alias editflake='$EDITOR /etc/nixos/flake.nix'

