function rb --wraps='sudo reboot now' --description 'alias rb=sudo reboot now'
    sudo reboot now $argv
end
