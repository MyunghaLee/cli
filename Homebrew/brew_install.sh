#!/usr/bin/bash
if not test -f /home/linuxbrew/.linuxbrew/bin/brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
end

/home/linuxbrew/.linuxbrew/bin/brew bundle

