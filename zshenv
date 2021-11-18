export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

export BASE16_THEME=horizon-dark
# export BASE16_THEME=brewer
# export BASE16_THEME=savanna

# export ZINIT_HOME=/nix/store/20isg6ybqk73xk56a754h92vvpwhx29a-zinit-3.7/share/zinit
# source $ZINIT_HOME/zinit.zsh

export PATH=~/.local/bin:~/local/bin:$PATH
export TERMINAL=alacritty
export BROWSER=$(which chromium)

# rust
export PATH=/home/arinal/.cargo/bin:$PATH

# Go
export GOPATH=/home/arinal/sources/go/lib
export PATH=$PATH:$GOPATH/bin

# R
export R_LIBS_USER=/home/arinal/sources/R/lib

# Flutter
export PATH=$PATH:/home/arinal/sources/flutter/flutter.git/bin:/home/arinal/sources/flutter/flutter.git/bin/cache/dart-sdk/bin
export ANDROID_SDK_ROOT=/home/arinal/apps/Android/Sdk

# FZF
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d ."
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
# export FZF_DEFAULT_COMMAND='rg --files --hidden'
# export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always {}"'
# export FZF_DEFAULT_OPTS='--style=numbers --color=always {}"'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Scala
export PATH="$PATH:/home/arinal/.local/share/coursier/bin"
export SPARK_HOME=/home/arinal/apps/spark-3.0.0-preview2-bin-hadoop2.7

# ruby
export PATH=$PATH:/home/arinal/.gem/ruby/2.7.0/bin

# npm
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=/home/arinal/.npm-global/bin:$PATH

# NIX
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
