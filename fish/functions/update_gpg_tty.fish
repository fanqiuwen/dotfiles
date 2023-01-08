function update_gpg_tty
  if command -q gpg
    set -x GPG_TTY (tty)
    gpg-connect-agent updatestartuptty /bye > /dev/null
  end
end
