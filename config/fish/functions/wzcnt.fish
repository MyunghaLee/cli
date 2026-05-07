function wzcnt --wraps='wezterm connect' --description 'Connect to wezterm domain in background'
    if test (count $argv) -gt 2
        echo "Error: too many arguments"
    else if test (count $argv) -eq 2
        wezterm connect $argv[1] --workspace $argv[2] 1>/dev/null 2>&1
    else if test (count $argv) -eq 1
        wezterm connect $argv[1] --workspace dev 1>/dev/null 2>&1
    else
        wezterm connect localhost --workspace dev 1>/dev/null 2>&1
    end
end
