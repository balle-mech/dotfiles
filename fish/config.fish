###########    PATH   ###########
if status is-interactive
    # Commands to run in interactive sessions can go here
    # PATH
    set PATH /opt/homebrew/bin $PATH # <-追加
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/fukunagaatsushi/anaconda3/bin/conda
    eval /Users/fukunagaatsushi/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# ghqの管理化にあるリポジトリを一覧表示するキーバインドを設定
function ghq-src
    set selected_dir (ghq list -p | peco --query (commandline -b))
    if test -n "$selected_dir"
        cd $selected_dir
    end
end

bind \cg ghq-src
