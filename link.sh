#!/bin/bash

set -u

echo 'Creating symlinks...'

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# .bashrc
ln -sf "$DOTFILES_DIR/.bashrc" ~/.bashrc

# .gitconfig
ln -sf "$DOTFILES_DIR/.gitconfig" ~/.gitconfig

# fish
mkdir -p ~/.config/fish
ln -sf "$DOTFILES_DIR/.config/fish/config.fish" ~/.config/fish/config.fish

# Claude Code
mkdir -p ~/.claude
ln -sf "$DOTFILES_DIR/.claude/settings.json" ~/.claude/settings.json

# Karabiner-Elements
mkdir -p ~/.config/karabiner
ln -sf "$DOTFILES_DIR/.config/karabiner/karabiner.json" ~/.config/karabiner/karabiner.json

# Ghostty
mkdir -p ~/.config/ghostty
ln -sf "$DOTFILES_DIR/.config/ghostty/config" ~/.config/ghostty/config

# VSCode
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf "$DOTFILES_DIR/Library/Application Support/Code/User/settings.json" ~/Library/Application\ Support/Code/User/settings.json
ln -sf "$DOTFILES_DIR/Library/Application Support/Code/User/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json

echo 'Done!'
