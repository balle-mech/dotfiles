# cd時にtabでディレクトリ選択
bind '"\C-o": "\C-e\C-u\er\C-y\C-a\C-k\C-y\C-e\C-u\C-y\C-y\C-m"'

# search history
peco-select-history() {
  local _cmd=$(HISTTIMEFORMAT= history | tac | sed -e 's/^\s*[0-9]\+\s\+//' | peco --query "$READLINE_LINE")
  READLINE_LINE="$_cmd"
  READLINE_POINT=${#_cmd}
}

bind -x '"\C-r": peco-select-history'
