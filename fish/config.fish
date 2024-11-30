# ghqの管理化にあるリポジトリを一覧表示するキーバインドを設定
function ghq-src
    set selected_dir (ghq list -p | peco --query (commandline -b))
    if test -n "$selected_dir"
        cd $selected_dir
    end
end

bind \cg ghq-src
