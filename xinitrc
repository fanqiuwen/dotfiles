#
# ~/.xinitrc
#

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset r 66
xbindkeys
numlockx &

redshift &
xautolock -time 30 -locker lockx &
/home/fanqiuwen/.dropbox-dist/dropboxd &

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx &

exec i3
