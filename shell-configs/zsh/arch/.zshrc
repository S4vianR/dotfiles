# --- History Configuration ---
export HISTFILE="$HOME/.zsh_history" # Where to save the history
export HISTSIZE=10000                # How many lines to keep in memory
export SAVEHIST=10000                # How many lines to save to the file

eval "$(starship init zsh)"

alias ls='lsd -lh --color=always --icon=always --group-dirs first'
alias la='lsd -lah --color=always --icon=always --group-dirs first'

alias grep='grep --color=auto'
alias update='sudo pacman -Syu'
alias search='pacman -Ss'
alias install='sudo pacman -Sy'
alias remove='sudo pacman -R'
alias purge='sudo pacman -Rns'
alias cat='bat'
alias news='paru -Pww | cat'
alias ip='ip -h -br -c'
alias icat="kitty +kitten icat"
alias refresh-keys='sudo pacman-key --refresh-keys'

alias rw="pkill waybar && nohup waybar >/dev/null 2>&1 &"   


bindkey -e

# Teclas de navegación básicas
bindkey "^[[H" beginning-of-line      # Tecla Inicio (Home)
bindkey "^[[F" end-of-line            # Tecla Fin (End)
bindkey "^[[3~" delete-char           # Tecla Supr (Delete)
bindkey "^[[5~" up-line-or-history    # Tecla RePág (Page Up)
bindkey "^[[6~" down-line-or-history  # Tecla AvPág (Page Down)
# Opciones alternativas por si tu teclado las manda diferente
bindkey "^[OH" beginning-of-line      # Tecla Inicio alternativa
bindkey "^[OF" end-of-line            # Tecla Fin alternativa
# Moverse palabra por palabra con Shift + Flechas
bindkey "^[[1;5D" backward-word   # Shift + Izquierda
bindkey "^[[1;5C" forward-word    # Shift + Derecha

## Functions
message(){
echo -e "\n\nRemember to run \e[1m\e[32m 'refresh-keys' \e[0m once in a while to fix pacman keyring\n"
}

copy() {
    # Verificar si se proporcionó un argumento (el nombre del archivo)
    if [[ -z "$1" ]]; then
        echo "Uso: copy <nombre_del_archivo>"
        return 1
    fi
    # Verificar si el archivo realmente existe y es un archivo regular
    if [[ ! -f "$1" ]]; then
        echo "Error: El archivo '$1' no existe o no es válido."
        return 1
    fi
    # Copiar el contenido al portapapeles usando wl-copy
    wl-copy < "$1"
    echo "✅ Contenido de '$1' copiado al portapapeles."
}

## Applications

fastfetch
message
