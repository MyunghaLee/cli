function sshyz --description 'ssh with yazi'
    ssh $argv -t "bash -l -c 'fish -l -c y'"
end
