function ll --wraps='eza -lah --git' --description 'alias ll=eza -lah --git'
    if type -q eza
        eza -lah --icons --git $argv
    else
        command ls --color=auto -l $argv
    end
end
