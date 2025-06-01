#!/bin/bash
set -e

# Get the directory of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Create ~/.config/fcitx5 if it doesn't exist
if [ ! -d "$HOME/.config/fcitx5" ]; then
  run mkdir -p "$HOME/.config/fcitx5"
fi

# Copy config and profile files to the target directory
run cp "$SCRIPT_DIR/config" "$HOME/.config/fcitx5/config"
run cp "$SCRIPT_DIR/profile" "$HOME/.config/fcitx5/profile"

