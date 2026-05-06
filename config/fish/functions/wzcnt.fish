function wzcnt --wraps='wezterm connect' --description 'Connect to wezterm domain in background'
    if test (count $argv) -gt 2
        echo "Error: too many arguments"
    else if test (count $argv) -eq 2
        nohup flatpak run org.wezfurlong.wezterm connect $argv[1] --workspace $argv[2] >/dev/null 2>&1 &
        disown
    else if test (count $argv) -eq 1
        nohup flatpak run org.wezfurlong.wezterm connect $argv[1] --workspace dev >/dev/null 2>&1 &
        disown
    else
        nohup flatpak run org.wezfurlong.wezterm connect localhost --workspace dev >/dev/null 2>&1 &
        disown
    end
end
