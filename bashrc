# .bashrc
# Import the colors.
. "${HOME}/.cache/wal/colors.sh"

# Create the alias.
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias inst='sudo xbps-install -S'
alias delt='sudo xbps-remove -R'
alias srch='sudo xbps-query -Rs'
alias ls='ls --color=auto'
alias ll='ls -la'
alias wp='ranger ~/Pictures/Wallpapers'
alias rn='ranger'
alias feh='feh --scale-down --auto-zoom'
alias bedit='vim ~/.bashrc'
alias ttefc='cd ~/repos/ttef/ttefc/'
alias ufetch='bash /usr/share/ufetch-void'
alias cs='cowsay'
alias v='vim'
alias cm='cd ..'

PS1='[\u@\h \W]\$ '
#export PS1="\u::\w ->\[$(tput sgr0)\]"

#export PS1="\[\033[38;5;220m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]>\[$(tput sgr0)\]\[\033[38;5;202m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]> \[$(tput sgr0)\]"
#
#export PS1="\[\033[38;5;221m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]>>\[$(tput sgr0)\]\[\033[38;5;136m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]>> \[$(tput sgr0)\]"
#export PS1="\[\033[38;5;219m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] > \[$(tput sgr0)\]"

#export PS1="\w > \[$(tput sgr0)\]"

export PS1="\w λ \[$(tput sgr0)\]"
#export PS1="\w 卍 \[$(tput sgr0)\]"
export PS1="\W \[$(tput sgr0)\]\[\033[38;5;1m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PS1="\W \[$(tput sgr0)\]\[\033[38;5;5m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PS1="\W \[$(tput sgr0)\]\[\033[38;5;202m\]>>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export PS1="\[\033[38;5;244m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;202m\]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
