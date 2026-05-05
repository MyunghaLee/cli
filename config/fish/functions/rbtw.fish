function rbtw --wraps='sudo grub2-reboot 4; sudo reboot' --description 'alias rbtw=sudo grub2-reboot 4; sudo reboot'
    sudo grub2-reboot 4; sudo reboot $argv
end
