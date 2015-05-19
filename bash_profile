#
# ~/.bash_profile
#

PATH="/usr/local/sbin:$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# start gpg-agent and use it as an ssh agent
gpg-connect-agent updatestartuptty /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

[[ -f ~/.bashrc ]] && . ~/.bashrc
