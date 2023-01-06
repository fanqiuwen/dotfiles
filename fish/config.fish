if status is-interactive
  fish_config theme choose my
  set --global fish_key_bindings fish_vi_key_bindings

  # Enable colorized ls
  if test -f ~/.dircolors
    eval (dircolors -c ~/.dircolors | sed 's/> / /g')
  end

  # If on ssh and not in tmux, start tmux.
  if test -n "$SSH_CLIENT" -a -z "$TMUX" && command -q tmux
    exec tmx2 new-session -A -s ssh
  end

  gcertstatus -nocheck_ssh -check_remaining=1h || gcert
  source_google_fish_package hi
end
