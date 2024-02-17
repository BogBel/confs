#!/bin/bash

CONFIG_DIR="$HOME/.config"

# Copy configuration files
cp -R "$HOME/.tmux.conf" "./tmux/tmux.conf"
cp -R "$HOME/.zshrc" "./zsh/zshrc"
# Define the locations of your dotfiles repository and target locations
cp -R "$CONFIG_DIR/karabiner/" "./karabiner"
cp -R "$CONFIG_DIR/sketchybar/" "./sketchybar"
cp -R "$CONFIG_DIR/nvim/" "./nvim"
cp -R "$CONFIG_DIR/qutebrowser/" "./qutebrowser"
cp -R "$CONFIG_DIR/yabai/" "./yabai_skhd/yabai"
cp -R "$CONFIG_DIR/skhd/" "./yabai_skhd/skhd"
# cp -R "$DOTFILES_DIR/.tmux.conf" "$TARGET_DIR/.tmux.conf"
# cp -R "$DOTFILES_DIR/.zshrc" "$TARGET_DIR/.zshrc"
# cp -R "$DOTFILES_DIR/.vimrc" "$TARGET_DIR/.vimrc"

echo "Configuration files deployed successfully!"

