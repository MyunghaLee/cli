#!/usr/bin/bash

if [ ! -f "$HOME/.homebrew/bin/brew" ]; then
  git clone https://github.com/Homebrew/brew.git "$HOME/.homebrew"
fi

$HOME/.homebrew/bin/brew bundle

$HOME/.homebrew/bin/atuin login
$HOME/.homebrew/bin/atuin sync
