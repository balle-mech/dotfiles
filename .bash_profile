# cd時にtabでディレクトリ選択
bind '"\C-o": "\C-e\C-u\er\C-y\C-a\C-k\C-y\C-e\C-u\C-y\C-y\C-m"'
# bind 'TAB:menu-complete'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fukunagaatsushi/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fukunagaatsushi/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/fukunagaatsushi/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fukunagaatsushi/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# ffmpeg
export PATH="/usr/local/opt/ffmpeg@4/bin:$PATH"
export PATH="/usr/local/opt/ffmpeg@4/bin:$PATH"
