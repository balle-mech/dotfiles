# git aliases
alias g='git'
alias pull='git pull'
alias push='git push'
alias st='git status'

set -x PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/lib/node_modules/.bin $PATH
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

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
end
