#
# ~/.xinitrc
#

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap us -variant colemak
xset r 66

ssh -Y home i3 &
exec xterm
