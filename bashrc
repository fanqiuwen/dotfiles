#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;36m\][\u@\h \W]\$ \[\e[0m\]'
eval `dircolors ~/.dircolors`

source /usr/bin/virtualenvwrapper.sh

alias gnomeghc='Xnest -geometry 1280x800 :1& DISPLAY=:1 ssh -Y ghc gnome-session'
alias ls='ls --color=auto'
alias sshfscmu='sshfs cmu:/afs/andrew.cmu.edu/usr/qfan/ ~/qfan'
alias vpncmugen='sudo openconnect --authgroup="General Use Campus VPN" vpn.cmu.edu'
alias vpncmulib='sudo openconnect --authgroup="Library Resources VPN" vpn.cmu.edu'
alias vnclocal='[[ -z "$(pgrep x0vncserver)" ]] && x0vncserver -display :0 -passwordfile ~/.vnc/passwd & vncviewer -passwd ~/.vnc/passwd -FullScreen -DotWhenNoCursor 127.0.0.1:5900'
alias wdiff='wdiff -w "$(tput bold;tput setaf 1)" -x "$(tput sgr0)" -y "$(tput bold;tput setaf 2)" -z "$(tput sgr0)"'
