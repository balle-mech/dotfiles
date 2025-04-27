# !#/bin/bash

# echo 'Setting up Mac...'

# # install homebrew
# if test ! $(which brew); then
#   echo 'install homebrew'
#   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# else
#   echo '\nhomebrew already installed.'
# fi

# # Setup shell
# brew install fish
# echo '/opt/homebrew/bin/fish' | sudo tee -a /etc/shells
# chsh -s /opt/homebrew/bin/fish_path
# fisher install oh-my-fish/theme-bobthefish

# # Update Homebrew recipes
# brew update

## ======== Install Packages ========
### ========= z =========
# brew install z
# fisher install jethrokuan/z

# brew install git
# brew install tig
# brew install --cask iterm2
# brew install peco ghq
# fisher install oh-my-fish/plugin-peco yoshiori/fish-peco_select_ghq_repository
