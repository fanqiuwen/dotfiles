if status is-interactive
  # Enable colorized ls for macOS.
  set -x CLICOLOR 1

  # Symlink ssh-agent socket to a static location for tmux. If not using a
  # forwarded ssh-agent, use gpg-agent as ssh-agent.
  set -l ssh_auth_sock "$HOME/.ssh/ssh_auth_sock"
  if test "$SSH_AUTH_SOCK" != $ssh_auth_sock
    if test -n "$SSH_AUTH_SOCK"; and not string match -q "*com.apple.launchd*" "$SSH_AUTH_SOCK"
      ln -sf $SSH_AUTH_SOCK $ssh_auth_sock
      set -x SSH_AUTH_SOCK $ssh_auth_sock
    else if command -q gpg
      ln -sf (gpgconf --list-dirs agent-ssh-socket) $ssh_auth_sock
      set -x SSH_AUTH_SOCK $ssh_auth_sock
    end
  end

  # If on ssh and not in tmux, start tmux.
  if test -n "$SSH_CLIENT" -a -z "$TMUX" && command -q tmux
    exec tmux new-session -A -s ssh
  end
end
