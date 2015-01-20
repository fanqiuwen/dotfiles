#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;36m\][\u@\h \W]\$ \[\e[0m\]'

alias ls='ls --color=auto'
alias sshfscmu='sshfs cmu:/afs/andrew.cmu.edu/usr/qfan/ ~/qfan'
alias gnomeghc='Xnest -geometry 1280x800 :1& DISPLAY=:1 ssh -Y ghc gnome-session'
