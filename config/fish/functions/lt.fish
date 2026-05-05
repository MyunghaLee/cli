function lt --wraps='eza --tree --level=2' --description 'alias lt=eza --tree --level=2'
    if type -q eza
        eza --tree --icons --level=2 $argv
    else
        command tree -L 2 $argv
    end
end
