#!/usr/bin/bash

curl -LO https://github.com/wezterm/wezterm/releases/download/nightly/WezTerm-nightly-Ubuntu20.04.AppImage
mv WezTerm-nightly-Ubuntu20.04.AppImage $PWD/bin/wezterm
chmod +x $PWD/bin/wezterm

mkdir -p $HOME/.local/bin
ln -sf $PWD/bin/wezterm $HOME/.local/bin/wezterm
