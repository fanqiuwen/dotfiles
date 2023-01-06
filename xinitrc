#
# ~/.xinitrc
#

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# input method
setxkbmap us -variant colemak
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx &

# launch some programs
redshift &
xautolock -time 30 -locker slock &

xrandr --output DP-4.8 --pos 0x400 --output DP-5.8 --rotate left --pos 2560x0

exec i3
