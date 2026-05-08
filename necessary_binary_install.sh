#!/usr/bin/bash

if [ ! -f "$PWD/bin/eget" ]; then
  curl https://zyedidia.github.io/eget.sh | sh
  mkdir -p $PWD/bin
  mv $PWD/eget $PWD/bin
fi

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

if [ ! -f "$PWD/bin/fish" ]; then
  $EGET --to $PWD/bin fish-shell/fish-shell --tag="4.6.0"
  echo "------------------------------------------------------------------------------------------------"
fi

if [ ! -f "$PWD/bin/zellij" ]; then
  $EGET --to $PWD/bin zellij-org/zellij --asset="zellij-$ARCH-unknown-linux-musl" --tag="v0.44.1"
  echo "------------------------------------------------------------------------------------------------"
fi

# if [ ! -f "$PWD/bin/wezterm" ]; then
#   $EGET --to $PWD/bin wezterm/wezterm --asset Image --asset ^zsync
#   echo "------------------------------------------------------------------------------------------------"
# fi

mkdir -p $HOME/.local/bin
ln -sf $PWD/bin/* $HOME/.local/bin
