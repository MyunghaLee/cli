function sshcf --wraps='$EDITOR $HOME/.ssh/config' --description 'alias sshcf=$EDITOR $HOME/.ssh/config'
    $EDITOR $HOME/.ssh/config $argv
end
