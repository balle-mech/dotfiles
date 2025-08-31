set -x PATH /opt/homebrew/bin $PATH

# ghqの管理化にあるリポジトリを一覧表示するキーバインドを設定
function ghq-src
    set selected_dir (ghq list -p | peco --query (commandline -b))
    if test -n "$selected_dir"
        cd $selected_dir
    end
end

bind \cg ghq-src

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/fukunagaatsushi/miniforge3/bin/conda
    eval /Users/fukunagaatsushi/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/fukunagaatsushi/miniforge3/etc/fish/conf.d/conda.fish"
        . "/Users/fukunagaatsushi/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/fukunagaatsushi/miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<

# nvm 用の環境変数設定
set -gx NVM_DIR ~/.nvm
set -gx PATH $NVM_DIR/bin $PATH

# Homebrew の nvm をロード
if test -s (brew --prefix nvm)/nvm.sh
    source (brew --prefix nvm)/nvm.sh
end

# bash 補完をロード
if test -s (brew --prefix nvm)/etc/bash_completion.d/nvm
    source (brew --prefix nvm)/etc/bash_completion.d/nvm
end
