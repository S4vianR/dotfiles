#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases

## For EXA
# alias ls='exa -lh --color=always --icons --group-directories-first --git'
# alias la='exa -lah --color=always --icons --group-directories-first --git'

## For LSD
alias ls='lsd -lh --color=always --icon=always--group-directories-first --git'
alias la='lsd -lah --color=always --icon=always --group-directories-first --git'

alias grep='grep --color=auto'
alias update='sudo pacman -Syu'
alias search='pacman -Ss'
alias install='sudo pacman -Sy'
alias remove='sudo pacman -R'
alias purge='sudo pacman -Rns'
alias cat='bat'
alias news='paru -Pww | cat'
alias ip='ip -h -br -c'
alias refresh-keys='sudo pacman-key --refresh-keys'

# Bash prompt
#PS1='[\u@\h \W]\$ '

PS1='\[\e[0;38;5;156m\]\u \[\e[0;1;38;5;127m\]on \[\e[0;38;5;158m\]\h \[\e[0;1;38;5;127m\]at \[\e[0;38;5;39m\][ \[\e[0;1;38;5;193m\]\w \[\e[0;38;5;39m\]]\n \[\e[0;38;5;196m\]> \[\e[0;38;5;30m\]\$ \[\e[0m\]'



# pnpm
export PNPM_HOME="/home/reuben/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

PATH=~/.console-ninja/.bin:$PATH

## Functions
message(){
echo -e "\n\nRemember to run \e[1m\e[32m 'refresh-keys' \e[0m once in a while to fix pacman keyring\n"
}

## Applications

fastfetch
message


