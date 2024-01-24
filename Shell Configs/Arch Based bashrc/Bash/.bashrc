#
# ~/.bashrc
#

export VISUAL=neovim   # Change 'nano' to your preferred text editor
export EDITOR="$VISUAL"
export TERM=xterm


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases
alias ls='exa -lah --color=always --icons --group-directories-first --git'
alias grep='grep --color=auto'
alias update='sudo pacman -Syu'
alias search='pacman -Ss'
alias install='sudo pacman -Sy'
alias remove='sudo pacman -R'
alias purge='sudo pacman -Rns'
alias cat='bat --color=always'
alias news='paru -Pww | cat'

# Bash prompt
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;38;5;156m\]\u \[\e[0;1;38;5;127m\]on \[\e[0;38;5;158m\]\h \[\e[0;1;38;5;127m\]at \[\e[0;38;5;39m\][ \[\e[0;1;38;5;193m\]\w \[\e[0;38;5;39m\]]\n \[\e[0;38;5;196m\]> \[\e[0;38;5;30m\]\$ \[\e[0m\]'


PATH=~/.console-ninja/.bin:$PATH