function rbtocu --wraps='systemctl --user restart touchcursor' --description 'alias rbtocu=systemctl --user restart touchcursor'
    systemctl --user restart touchcursor $argv
end
