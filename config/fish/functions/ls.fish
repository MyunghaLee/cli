function ls --wraps='eza --git --color=always' --description 'alias ls=eza --git --color=always'
    if type -q eza
        eza --icons --git --color=always $argv
    else
        command ls --color=auto $argv
    end
end
