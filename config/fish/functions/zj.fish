function zj --wraps='zellij a -c' --description 'alias zj=zellij a -c'
    if test (count $argv) -gt 0
        zellij a -c $argv
    else
        zellij a -c dev
    end
end
