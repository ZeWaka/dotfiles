
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#Colored Man Pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#Ignore Duplicate History
export HISTCONTROL=ignoreboth

#Alt-H to man
bind '"\eh": "\C-a\eb\ed\C-y\e#man \C-y\C-m\C-p\C-p\C-a\C-d\C-e"'

#auto CD
shopt -s autocd

#CD alias
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias ....='cd ..;cd ..;cd ..;'

# Ignore case during tab completion.
bind 'set completion-ignore-case on'

# Custom PS1
export PS1="\[\033[38;5;131m\][\[$(tput sgr0)\]\[\033[38;5;65m\]\t\[$(tput sgr0)\]\[\033[38;5;131m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;249m\]@\[$(tput sgr0)\]\[\033[38;5;31m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;140m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;9m\]>\[$(tput sgr0)\]"
