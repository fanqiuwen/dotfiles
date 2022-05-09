#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;36m\]\$ \[\e[0m\]'
eval "$(dircolors ~/.dircolors)"

HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

source ~/ledger/aliases

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vnclocal='[[ -z "$(pgrep x0vncserver)" ]] && x0vncserver -display :0 -passwordfile ~/.vnc/passwd & vncviewer -passwd ~/.vnc/passwd -FullScreen -DotWhenNoCursor 127.0.0.1:5900'
alias wdiff='wdiff -w "$(tput bold;tput setaf 1)" -x "$(tput sgr0)" -y "$(tput bold;tput setaf 2)" -z "$(tput sgr0)"'
