#!/usr/bin/bash

if [ ! -f "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

/home/linuxbrew/.linuxbrew/bin/brew bundle
