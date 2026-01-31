#!/usr/bin/env bash
# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make utilities available
PATH="$DOTFILES_DIR/bin:$PATH"

# Create symlinks
ln -sfv "$DOTFILES_DIR/.aliases" ~
ln -sfv "$DOTFILES_DIR/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/.bash_prompt" ~
ln -sfv "$DOTFILES_DIR/.exports" ~
ln -sfv "$DOTFILES_DIR/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~

source ~/.bash_profile;

# Ensure init scripts are executable
chmod +x "$DOTFILES_DIR/init/"*.sh || true

# Install homebrew
"$DOTFILES_DIR/init/install_homebrew.sh"

# Install homebrew packages
"$DOTFILES_DIR/init/brew.sh"

# Update macos defaults
"$DOTFILES_DIR/init/macos.sh"
