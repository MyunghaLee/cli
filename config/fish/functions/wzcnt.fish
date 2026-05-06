function wzcnt --wraps='wezterm connect' --description 'Connect to wezterm domain in background'
    if test (count $argv) -gt 2
        echo "Error: too many arguments"
    else if test (count $argv) -eq 2
        nohup wezterm connect $argv[1] --workspace $argv[2] 1>/dev/null 2>&1 &
        disown
    else if test (count $argv) -eq 1
        nohup wezterm connect $argv[1] --workspace dev 1>/dev/null 2>&1 &
        disown
    else
        nohup wezterm connect localhost --workspace dev 1>/dev/null 2>&1 &
        disown
    end
end
