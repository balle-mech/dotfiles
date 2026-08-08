#!/bin/bash

set -u

echo 'Setting up Mac...'

# ======== Homebrew ========
if ! command -v brew &>/dev/null; then
  echo 'install homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  echo 'homebrew already installed.'
fi

brew update

# ======== Formulae ========
FORMULAE=(
  fish
  gh
  ghq
  git-filter-repo
  git-lfs
  node
  nodebrew
  nvm
  peco
  tig
  tree
  wget
  z
)

for formula in "${FORMULAE[@]}"; do
  brew install "$formula"
done

# ======== Casks ========
CASKS=(
  alt-tab
  appcleaner
  cursor
  docker-desktop
  ghostty
  karabiner-elements
  logi-options+
  notion
  google-chrome
  notion-calendar
  obsidian
  raycast
  rectangle
  skitch
  tailscale-app
  vanilla
  visual-studio-code
  xmind
)

for cask in "${CASKS[@]}"; do
  brew install --cask "$cask"
done

# ======== Shell (fish) ========
if ! grep -q '/opt/homebrew/bin/fish' /etc/shells; then
  echo '/opt/homebrew/bin/fish' | sudo tee -a /etc/shells
  chsh -s /opt/homebrew/bin/fish
fi

# ======== fisher & plugins ========
if ! fish -c 'type -q fisher' &>/dev/null; then
  echo 'install fisher'
  fish -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher'
fi
fish -c 'fisher install oh-my-fish/theme-bobthefish jethrokuan/z oh-my-fish/plugin-peco yoshiori/fish-peco_select_ghq_repository'

# ======== Claude Code ========
if ! command -v claude &>/dev/null; then
  echo 'install claude code'
  curl -fsSL https://claude.ai/install.sh | bash
fi

echo 'Done!'
