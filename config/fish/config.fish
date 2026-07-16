if test -f /home/linuxbrew/.linuxbrew/bin/brew
	/home/linuxbrew/.linuxbrew/bin/brew shellenv fish | source
else if test -f $HOME/.homebrew/bin/brew
	$HOME/.homebrew/bin/brew shellenv fish | source
end

fish_add_path $HOME/.local/bin

set -l potential_editors nvim vim vi nano
for editor in $potential_editors
    if type -q $editor
        set -gx EDITOR (which $editor)
        set -gx SUDO_EDITOR (which $editor)
        break
    end
end

if type -q zoxide
	# zoxide init fish --cmd cd | source
	zoxide init fish | source
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

# fish_vi_key_bindings
# bind -M insert ctrl-backspace backward-kill-path-component
# bind -M visual \x20y 'fish_clipboard_copy; commandline -f end-selection repaint-mode'
# bind -M default \x20p 'set -g fish_cursor_end_mode exclusive' forward-char 'set -g fish_cursor_end_mode inclusive' fish_clipboard_paste

# set -g ATUIN_COUNTER 0
# function atuin_sync_on_100 --on-event fish_postexec
#     set -g ATUIN_COUNTER (math $ATUIN_COUNTER + 1)
#
#     if test $ATUIN_COUNTER -ge 100
#         if type -q atuin
#             echo (set_color yellow)"󱍢 Reached 100 commands. Syncing with Atuin..."(set_color normal)
#             atuin sync
#             set -g ATUIN_COUNTER 0
#             echo (set_color green)"✔ Sync completed successfully!"(set_color normal)
#         else
#             set -g ATUIN_COUNTER 0
#         end
#     end
# end

set -g ATUIN_COUNTER_FILE "$HOME/.cache/atuin_sync_counter"

function atuin_sync_on_100 --on-event fish_postexec
    if not test -f "$ATUIN_COUNTER_FILE"
        mkdir -p "$HOME/.cache"
        echo 0 > "$ATUIN_COUNTER_FILE"
    end

    set -l current_count (cat "$ATUIN_COUNTER_FILE")
    set -l next_count (math $current_count + 1)

    if test "$next_count" -ge 100
        if type -q atuin
            echo (set_color yellow)"󱍢 Reached 100 commands across all sessions. Syncing..."(set_color normal)
            atuin sync
            echo (set_color green)"✔ Sync completed!"(set_color normal)
        end
        echo 0 > "$ATUIN_COUNTER_FILE"
    else
        echo "$next_count" > "$ATUIN_COUNTER_FILE"
    end
end


# for local_config
if test -f ~/.config/fish/local_config.fish
    source ~/.config/fish/local_config.fish
end

if set -q SSH_ASKPASS
    set -e SSH_ASKPASS
end

if set -q GIT_ASKPASS
    set -e GIT_ASKPASS
end

# ~/miniconda3/bin/conda shell.fish hook | source
