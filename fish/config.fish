# git aliases
alias g='git'
alias pull='git pull'
alias push='git push'
alias st='git status'

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
