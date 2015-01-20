#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Activate numlock
[[ -z "${SSH_CONNECTION}" ]] && setleds -D +num
