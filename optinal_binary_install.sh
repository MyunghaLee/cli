#!/usr/bin/bash

EGET="$PWD/bin/eget"
ARCH=$(uname -m)

case "$ARCH" in
x86_64 | amd64)
  ARCH="x86_64"
  ;;
aarch64 | arm64)
  ARCH="arm64"
  ;;
*)
  exit 1
  ;;
esac

if [ ! -f "$PWD/bin/atuin" ]; then
  $EGET --to $PWD/bin atuinsh/atuin --asset="atuin-x86_64-unknown-linux-musl.tar.gz"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/bat" ]; then
  $EGET --to $PWD/bin sharkdp/bat --asset="musl.tar.gz"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/btm" ]; then
  $EGET --to $PWD/bin ClementTsang/bottom --asset="musl" --file="btm"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/carapace" ]; then
  $EGET --to $PWD/bin carapace-sh/carapace-bin --asset="tar.gz" --file="carapace"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/dust" ]; then
  $EGET --to $PWD/bin bootandy/dust --asset="musl"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/eza" ]; then
  $EGET --to $PWD/bin eza-community/eza --asset="musl.tar.gz"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/fd" ]; then
  $EGET --to $PWD/bin sharkdp/fd --asset="musl"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/fzf" ]; then
  $EGET junegunn/fzf --to $PWD/bin
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/delta" ]; then
  $EGET dandavison/delta --asset="musl" --to $PWD/bin
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/glow" ]; then
  $EGET charmbracelet/glow --asset ^json --to $PWD/bin
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/hx" ]; then
  $EGET helix-editor/helix --to $PWD/bin
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/lazygit" ]; then
  $EGET jesseduffield/lazygit --to $PWD/bin --tag "v0.38.0"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/nvim" ]; then
  $EGET neovim/neovim-releases
  mv $PWD/nvim-* $PWD/nvim
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/opencode" ]; then
  $EGET anomalyco/opencode --asset musl --asset ^baseline --to $PWD/bin
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/procs" ]; then
  $EGET dalance/procs --to $PWD/bin
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/rg" ]; then
  $EGET --to $PWD/bin BurntSushi/ripgrep --asset="musl"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/starship" ]; then
  $EGET --to $PWD/bin starship/starship --asset="musl"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/tldr" ]; then
  $EGET --to $PWD/bin tealdeer-rs/tealdeer --asset="musl"
  mv $PWD/bin/tealdeer $PWD/bin/tldr
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/yazi" ]; then
  $EGET --to $PWD/bin sxyazi/yazi --asset="musl.zip"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/zellij" ]; then
  $EGET --to $PWD/bin zellij-org/zellij --asset="zellij-$ARCH-unknown-linux-musl"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/zoxide" ]; then
  $EGET --to $PWD/bin ajeetdsouza/zoxide --asset="musl"
  echo "------------------------------------------------------------------------------------------------"
fi

mkdir -p $HOME/.local/bin
ln -sf $PWD/bin/* $HOME/.local/bin
