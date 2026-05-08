function wssh --description 'wezterm ssh with auto-exec fish'
  # nohup wezterm ssh $argv -- "~/.local/bin/fish" 1>/dev/null 2>&1 &
  nohup wezterm ssh $argv -- /home/linuxbrew/.linuxbrew/bin/zellij a -c dev 1>/dev/null 2>&1 &
  disown
end
