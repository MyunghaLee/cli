function rc --wraps='vi ~/.config/fish/config.fish' --description 'alias rc=vi ~/.config/fish/config.fish'
    $EDITOR ~/.config/fish/config.fish $argv
end
