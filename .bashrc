PS1="\u \w \$ "

if [[ $iatest -gt 0 ]]; then bind "set bell-style visible"; fi



export EDITOR='nvim'
export VISUAL='nvim'
export TERM='kitty'
export TERMINAL='kitty'
export TERMINAL_PROG='kitty'
export BROWSER='brave'



alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias mkd='mkdir -pv'
alias rmd='rm -rfvI'
alias del='rm -Irv "$(find | fzf -m)"'
alias trash='trash -v'

alias ~='cd ~'
alias ..='cd ..'

alias ls='ls -Nh --color=always --group-directories-first'
alias la='ls -ANh --color=always --group-directories-first'
alias ll='ls -lANh --color=always --group-directories-first'

alias cat='bat --color=always'
alias grep='grep --color=auto'
alias ftxt='grep -iIHrn --color=always "$1" . | less -r'

alias quit='exit'

alias fim='nvim "$(find | fzf --preview "cat {}")"'
alias vim='nvim'
alias v='nvim'


alias s='paru -S'
alias u='paru -Syu'
alias r='paru -R'
alias c='paru -Scc'
alias gparu='bash ~/scripts/gparu.sh'



extract() {
  for archive in "$@"; do
    if [ -f "$archive" ]; then
      case $archive in
        *.tar.gz) tar xvzf $archive ;;
        *.tar.xz) tar xvJf $archive ;;
        *.tar.bz2) tar xvjf $archive ;;
        *.bz2) bunzip2 $archive ;;
        *.rar) rar x $archive ;;
        *.gz) gunzip $archive ;;
        *.tar) tar xvf $archive ;;
        *.tbz2) tar xvjf $archive ;;
        *.tgz) tar xvzf $archive ;;
        *.zip) unzip $archive ;;
        *.Z) uncompress $archive ;;
        *.7z) 7z x $archive ;;
        *) echo "unable to extract '$archive'" ;;
      esac
    else
      echo "'$archive' is not a valid file!"
    fi
  done
}
