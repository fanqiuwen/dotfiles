#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Activate numlock
[[ -z "${SSH_CONNECTION}${TMUX}" ]] && setleds -D +num
