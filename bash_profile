#
# ~/.bash_profile
#

PATH="$HOME/.local/bin:$PATH:$(ruby -e 'print Gem.user_dir')/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
