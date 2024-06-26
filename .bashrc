# cd時にtabでディレクトリ選択
# bind '"\C-x\C-d": "ls -d */\n"'
bind 'set show-all-if-ambiguous on'

# search history
peco-select-history() {
  local _cmd=$(HISTTIMEFORMAT= history | tac | sed -e 's/^\s*[0-9]\+\s\+//' | peco --query "$READLINE_LINE")
  READLINE_LINE="$_cmd"
  READLINE_POINT=${#_cmd}
}

bind -x '"\C-r": peco-select-history'
