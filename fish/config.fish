if status is-interactive
  # If not using forwarded ssh-agent, use gpg-agent as ssh-agent.
  if test -z $SSH_AUTH_SOCK && command -q gpg
    set -x GPG_TTY (tty)
    set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
    gpg-connect-agent updatestartuptty /bye > /dev/null
  end
end
