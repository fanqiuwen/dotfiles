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

exec i3
