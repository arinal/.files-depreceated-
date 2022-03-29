export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

export PATH=~/.local/bin:~/local/bin:$PATH
export TERMINAL=alacritty
export BROWSER=firefox

# rust
export PATH=/home/arinal/.cargo/bin:$PATH

# Go
export GOPATH=/home/arinal/sources/go/lib
export PATH=$PATH:$GOPATH/bin

# R
# export R_LIBS_USER=/home/arinal/sources/R/lib

# Flutter
# export PATH=$PATH:/home/arinal/sources/flutter/flutter.git/bin:/home/arinal/sources/flutter/flutter.git/bin/cache/dart-sdk/bin
# export ANDROID_SDK_ROOT=/home/arinal/apps/Android/Sdk

# FZF
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d ."
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

# Scala
export PATH="$PATH:/home/arinal/.local/share/coursier/bin"
export SPARK_HOME=/home/arinal/apps/spark-3.0.0-preview2-bin-hadoop2.7

# ruby
# export PATH=$PATH:/home/arinal/.gem/ruby/2.7.0/bin

# npm
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=/home/arinal/.npm-global/bin:$PATH

# NIX
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/arinal/apps/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/arinal/apps/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/arinal/apps/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/arinal/apps/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

