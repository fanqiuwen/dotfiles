#
# ~/.bash_profile
#

PATH="$HOME/.local/bin:$PATH:$(ruby -e 'print Gem.user_dir')/bin:$(npm config get prefix)/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
