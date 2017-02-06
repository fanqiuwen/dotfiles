#
# ~/.xinitrc
#

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# keyboard settings
numlockx
xset r 66
xbindkeys

# input method
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx &

# launch some programs
dropboxd &
redshift &
xautolock -time 30 -locker lockx &

# start gpg-agent and use it as an ssh agent
gpg-connect-agent /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

exec i3
