# git aliases
alias g='git'
alias pull='git pull'
alias push='git push'
alias st='git status'

set -x PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/lib/node_modules/.bin $PATH
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -gx PATH ~/.local/bin $PATH

# bob-the-fish theme settings
set -g theme_powerline_fonts yes

# ghqの管理化にあるリポジトリを一覧表示するキーバインドを設定
function ghq-src
    set selected_dir (ghq list -p | peco --query (commandline -b))
    if test -n "$selected_dir"
        cd $selected_dir
    end
end

function fish_user_key_bindings
    bind \cg ghq-src
    # Ghosty は Kitty keyboard protocol で Cmd+G を CSI u 形式 (ESC [ 103 ; 9 u) で送るため、それをバインドする
    # 動作しない場合は `fish_key_reader` を実行して Cmd+G を押し、実際に届くシーケンスに置き換えること
    bind \e\[103\;9u ghq-src
end
