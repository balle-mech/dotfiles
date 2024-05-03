# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#######  PATH  #######
# ffmpeg
export PATH="/opt/homebrew/bin/ffmpeg:$PATH"
# CUDA
export PATH=/usr/local/cuda/bin:$PATH
# Flutter
export PATH="$HOME/develop/flutter/bin:$PATH"
# Homebrew
export PATH="/opt/homebrew/bin:$PATH"
# node
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
# direnvのhook
export EDITOR=code
eval "$(direnv hook zsh)"

# z
. ~/z/z.sh

# minifoge

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fukunagaatsushi/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fukunagaatsushi/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/fukunagaatsushi/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fukunagaatsushi/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#######  alias #######
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias t="tig"

#######  zshのテーマ  #######
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cobalt2"

plugins=(
	git
	zsh-syntax-highlighting
  zsh-completions
  zsh-autosuggestions
  zsh-history-substring-search
	)

source $ZSH/oh-my-zsh.sh

#自動ls
function chpwd() { ls }

# -------------------------------------------------
# pecoの活用1
# ctrl + r で過去に実行したコマンドを選択できるようにする。
function peco-select-history() {
  BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
# -------------------------------------------------

# ghqの管理化にあるリポジトリを一覧表示するキーバインドを設定
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^g' peco-src


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(anyenv init -)"
