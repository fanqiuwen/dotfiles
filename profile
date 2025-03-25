#
# ~/.profile
#

command_exists() {
  command -v $1 >/dev/null 2>&1
}

[[ -d /opt/homebrew/bin ]] && PATH="/opt/homebrew/bin:${PATH}"
[[ -d ${HOME}/.local/bin ]] && PATH="${HOME}/.local/bin:${PATH}"
command_exists go && PATH="${PATH}:$(go env GOPATH)/bin"
command_exists npm && PATH="${PATH}:$(npm config get prefix)/bin"
command_exists ruby && PATH="${PATH}:$(ruby -e 'print Gem.user_dir')/bin"
