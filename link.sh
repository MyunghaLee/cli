# ARCH=$(uname -m)
# case "$ARCH" in
# x86_64 | amd64)
#   FISH="fish-x86_64"
#   ZELLIJ="zellij-x86_64"
#   ;;
# aarch64 | arm64)
#   FISH="fish-aarch64"
#   ZELLIJ="zellij-aarch64"
#   ;;
# *)
#   exit 1
#   ;;
# esac
# ln -sf $PWD/bin/$FISH $PWD/bin/fish
# ln -sf $PWD/bin/$ZELLIJ $PWD/bin/zellij

mkdir -p $HOME/.local/bin
ln -sf $PWD/bin/* $HOME/.local/bin
ln -sf $PWD/config/* $HOME/.config
# ln -sf $PWD/homebrew $HOME/.homebrew
