# cd時にtabでディレクトリ選択
bind '"\C-o": "\C-e\C-u\er\C-y\C-a\C-k\C-y\C-e\C-u\C-y\C-y\C-m"'
# bind 'TAB:menu-complete'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
