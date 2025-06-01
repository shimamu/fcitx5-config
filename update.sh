#!/bin/bash
set -e

# Get the directory of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Check if the source files exist before copying
if [ ! -f "$HOME/.config/fcitx5/config" ]; then
  echo "Error: $HOME/.config/fcitx5/config does not exist."
  exit 1
fi

if [ ! -f "$HOME/.config/fcitx5/profile" ]; then
  echo "Error: $HOME/.config/fcitx5/profile does not exist."
  exit 1
fi

# Copy config and profile from user's config directory to current directory
run cp "$HOME/.config/fcitx5/config" "$SCRIPT_DIR/config"
run cp "$HOME/.config/fcitx5/profile" "$SCRIPT_DIR/profile"

