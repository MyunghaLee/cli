function wzcnt --wraps='wezterm connect' --description 'Connect to wezterm domain in background'
    if test (count $argv) -gt 2
        echo "Error: too many arguments"
    else if test (count $argv) -eq 2
        wezterm connect $argv[1] --workspace $argv[2]
    else if test (count $argv) -eq 1
        wezterm connect $argv[1] --workspace dev
    else
        wezterm connect localhost --workspace dev
    end
end
