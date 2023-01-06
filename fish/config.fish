if status is-interactive
  # If on ssh and not in tmux, start tmux.
  if test -n "$SSH_CLIENT" -a -z "$TMUX" && command -q tmux
    exec tmx2 new-session -A -s ssh
  end

  source_google_fish_package hi
end
