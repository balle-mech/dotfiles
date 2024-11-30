# bind 'TAB:menu-complete'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fukunagaatsushi/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fukunagaatsushi/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/fukunagaatsushi/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fukunagaatsushi/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/fukunagaatsushi/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/fukunagaatsushi/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

