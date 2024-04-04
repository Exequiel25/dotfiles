__sudo-replace-buffer() {
    local old=$1 new=$2 space=${2:+ }
    if [[ $CURSOR -le ${#old} ]]; then
        BUFFER="${new}${space}${BUFFER#$old }"
        CURSOR=${#new}
    else
        LBUFFER="${new}${space}${LBUFFER#$old }"
    fi
}

sudo-command-line() {
    [[ -z $BUFFER ]] && LBUFFER="$(fc -ln -1)"
    local WHITESPACE=""
    if [[ ${LBUFFER:0:1} = " " ]]; then
        WHITESPACE=" "
        LBUFFER="${LBUFFER:1}"
    fi

    local EDITOR="${SUDO_EDITOR:-${VISUAL:-$EDITOR}}"
    if [[ -z "$EDITOR" ]]; then
        LBUFFER="sudo $LBUFFER"
    else
        case "$BUFFER" in
            $EDITOR*) __sudo-replace-buffer "$EDITOR" "sudo -e" ;;
            sudo\ -e\ *) __sudo-replace-buffer "sudo -e" "$EDITOR" ;;
            sudo\ *) __sudo-replace-buffer "sudo" "" ;;
            *) LBUFFER="sudo $LBUFFER" ;;
        esac
    fi

    LBUFFER="${WHITESPACE}${LBUFFER}"
    zle && zle redisplay
}

zle -N sudo-command-line
bindkey -M emacs '\e\e' sudo-command-line
bindkey -M vicmd '\e\e' sudo-command-line
bindkey -M viins '\e\e' sudo-command-line