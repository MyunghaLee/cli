function kssh --description 'kitten ssh with auto-exec fish'
    kitten ssh $argv -t "~/.local/bin/fish"
end
