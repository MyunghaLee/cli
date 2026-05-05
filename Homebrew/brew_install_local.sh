#!/usr/bin/bash

if [ ! -f "$HOME/.homebrew/bin/brew" ]; then
  mkdir -p "$HOME/.homebrew"
  git clone https://github.com/Homebrew/brew.git "$HOME/.homebrew/bin/brew_repo"
  ln -sf "$HOME/.homebrew/bin/brew_repo/bin/brew" "$HOME/.homebrew/bin/brew"
fi

"$HOME/.homebrew/bin/brew" bundle
