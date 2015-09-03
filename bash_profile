#
# ~/.bash_profile
#

PATH="/afs/cs.cmu.edu/academic/class/15410-f15/bin:/opt/rh/devtoolset-3/root/usr/bin:${HOME}/.local/bin:${PATH}:$(ruby -e 'print Gem.user_dir')/bin"
LD_LIBRARY_PATH="${HOME}/.local/lib:${LD_LIBRARY_PATH}"

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$SSH_CONNECTION" ]; then
    setxkbmap us -variant colemak
    xset r 66
fi
