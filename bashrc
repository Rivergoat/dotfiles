#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize


fortune  -o | cowsay
export PS1="\\$ - \w -> \[$(tput sgr0)\]"

#export PS1="■──┬──┤\u├───┤\t│ \n   │\n   └┤\w├──┤\$?│  "
\$?
#┬ · ─  ■  ┤ ├ └ ■ ▶

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

## Colorize the ls output ##

alias ls='ls --color=auto'

alias wetter="curl wttr.in/wedel"

alias sscrot='scrot ~/memeshots/%b%d::%H%M%S.png'

alias clock='cd ~/repos/tty-clock/ && ./tty-clock && cd'
alias feh='feh --geometry 1024x768'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .* --color=auto'

alias f="firefox"

alias ttef="cd repos/ttef/ttefc"

alias white="bash ~/repos/dotfiles/white.sh"
alias sol="bash ~/repos/dotfiles/solarized.sh"
alias sollight="bash ~/repos/dotfiles/solarizedlight.sh"
alias neofetch="neofetch --loop --backend w3m --w3m ~/Pictures/wallpapers/sun.jpg"
alias tetris="cd ~/repos/Tetris && ./Tetris && cd"

##
case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac


[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
##LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

LS_COLORS=$LS_COLORS:'di=1;33:' ; export LS_COLORS
