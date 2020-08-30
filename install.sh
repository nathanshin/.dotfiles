#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR DOTFILES_CACHE DOTFILES_EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
DOTFILES_EXTRA_DIR="$HOME/.extra"

# Make utilities available
PATH="$DOTFILES_DIR/bin:$PATH"

# Update dotfiles itself first
if is-executable git -a -d "$DOTFILES_DIR/.git"; then git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master; fi

# Create symlinks
ln -sfv "$DOTFILES_DIR/.aliases" ~
ln -sfv "$DOTFILES_DIR/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/.bash_prompt" ~
ln -sfv "$DOTFILES_DIR/.tmux.conf" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~
