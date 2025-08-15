#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases

## Use if using EXA (EZA)
## alias ls='eza -lh --color=always --icons --group-directories-first --git'
## alias la='eza -lah --color=always --icons --group-directories-first --git'

## Use if using LSD
alias ls='lsd -l --group-dirs=first'
alias la='lsd -la --group-dirs=first'

alias grep='grep --color=auto'
alias update='sudo apt update && sudo apt upgrade'
alias search='apt search'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias purge='sudo apt purge'
alias cat='batcat'
alias ip='ip -h -br -c'

# Bash prompt
#PS1='[\u@\h \W]\$ '

PS1='\[\e[0;38;5;156m\]\u \[\e[0;1;38;5;127m\]on \[\e[0;38;5;158m\]\h \[\e[0;1;38;5;127m\]at \[\e[0;38;5;39m\][ \[\e[0;1;38;5;193m\]\w \[\e[0;38;5;39m\]]\n \[\e[0;38;5;196m\]> \[\e[0;38;5;30m\]\$ \[\e[0m\]'

## Applications

fastfetch


