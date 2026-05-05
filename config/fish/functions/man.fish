function man --description "alias man=env MANPAGER='vim -M +MANPAGER -' man"
    if type -q vim
        env MANPAGER='vim -M +MANPAGER -' man $argv
    else
        command man $argv
    end
end
