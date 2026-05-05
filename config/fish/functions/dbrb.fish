function dbrb --wraps='pkill -f dropbox; sleep 1; dropbox start' --description 'alias dbrb=pkill -f dropbox; sleep 1; dropbox start'
    pkill -f dropbox; sleep 1; dropbox start $argv
end
