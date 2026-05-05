if not test -f $HOME/.homebrew/bin/brew
  git clone https://github.com/Homebrew/brew.git
  ln -sf $PWD/brew $HOME/.homebrew
end

$HOME/.homebrew/bin/brew bundle
