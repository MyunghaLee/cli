fish_add_path $HOME/.local/bin

if test -f /home/linuxbrew/.linuxbrew/bin/brew
	/home/linuxbrew/.linuxbrew/bin/brew shellenv fish | source
else if test -f $HOME/.homebrew/bin/brew
	$HOME/.homebrew/bin/brew shellenv fish | source
end

set -l potential_editors nvim vim vi nano
for editor in $potential_editors
    if type -q $editor
        set -gx EDITOR (which $editor)
        set -gx SUDO_EDITOR (which $editor)
        break
    end
end

if type -q zoxide
	zoxide init fish --cmd cd | source
end
if type -q starship
	starship init fish | source
end
if type -q fzf
	fzf --fish | source
end
if type -q glow
	glow completion fish | source
end
if type -q atuin
	atuin init fish --disable-up-arrow | source
end
if type -q carapace
    set -gx CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense' # optional
    set -gx CARAPACE_MATCH 1
    carapace _carapace | source
end

set -g fish_greeting

set -gx RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/config"

fish_vi_key_bindings
bind -M insert ctrl-backspace backward-kill-path-component
bind -M visual \x20y 'fish_clipboard_copy; commandline -f end-selection repaint-mode'
bind -M default \x20p 'set -g fish_cursor_end_mode exclusive' forward-char 'set -g fish_cursor_end_mode inclusive' fish_clipboard_paste
