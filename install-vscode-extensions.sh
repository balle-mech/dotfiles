#!/bin/bash

set -u

echo 'Installing VSCode extensions...'

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v code &>/dev/null; then
  echo 'Error: code command not found. Install VSCode first (bash install-apps.sh).'
  exit 1
fi

while read -r extension; do
  code --install-extension "$extension"
done < "$DOTFILES_DIR/vscode-extensions.txt"

echo 'Done!'
