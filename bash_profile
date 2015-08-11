#
# ~/.bash_profile
#

PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Activate numlock
[[ -z "${SSH_CONNECTION}${TMUX}" ]] && setleds -D +num
