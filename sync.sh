#!/usr/bin/env bash
set -euo pipefail

# --- Paths ---
DOTFILES_DIR="$HOME/git/dotfiles"

declare -A CONFIGS=(
  [nvim]="$HOME/.config/nvim"
  [kitty]="$HOME/.config/kitty"
  [tmux/tmux.conf]="$HOME/.config/tmux/tmux.conf"
)

# --- Helpers ---
usage() {
  echo "Usage: $0 [--upload | --download]"
  echo ""
  echo "  --upload    Copy configs FROM your system TO dotfiles repo"
  echo "  --download  Copy configs FROM dotfiles repo TO your system"
  exit 1
}

upload() {
  echo "Uploading configs to $DOTFILES_DIR..."
  mkdir -p \
    "$DOTFILES_DIR/nvim" \
    "$DOTFILES_DIR/kitty" \
    "$DOTFILES_DIR/tmux"

  for dest_rel in "${!CONFIGS[@]}"; do
    src="${CONFIGS[$dest_rel]}"
    dest="$DOTFILES_DIR/$dest_rel"

    if [[ ! -e "$src" ]]; then
      echo "  [SKIP] $src not found"
      continue
    fi

    cp -r "$src" "$dest"
    echo "  [OK]   $src -> $dest"
  done
  echo "Done."
}

download() {
  echo "Downloading configs from $DOTFILES_DIR..."

  for dest_rel in "${!CONFIGS[@]}"; do
    src="$DOTFILES_DIR/$dest_rel"
    dest="${CONFIGS[$dest_rel]}"

    if [[ ! -e "$src" ]]; then
      echo "  [SKIP] $src not found in dotfiles repo"
      continue
    fi

    mkdir -p "$(dirname "$dest")"
    cp -r "$src" "$dest"
    echo "  [OK]   $src -> $dest"
  done
  echo "Done."
}

# --- Main ---
if [[ $# -ne 1 ]]; then
  usage
fi

case "$1" in
  --upload)   upload ;;
  --download) download ;;
  *)          usage ;;
esac
