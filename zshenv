export PATH=~/.local/bin:~/local/bin:$PATH
export TERMINAL=alacritty
export BROWSER=chromium

# rust
export PATH=/home/arinal/.cargo/bin:$PATH

# FZF
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" 2> /dev/null'
export FZF_DEFAULT_OPTS='--color'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d ."
export FZF_ALT_C_OPTS="--color"
export FZF_CTRL_T_OPTS="--color --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--color --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

# scala
export PATH="$PATH:/home/arinal/.local/share/coursier/bin"

# npm
source /usr/share/nvm/init-nvm.sh
# export NPM_CONFIG_PREFIX=~/.npm-global
# export PATH=/home/arinal/.npm-global/bin:$PATH


# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

# R
# export R_LIBS_USER=/home/arinal/sources/R/lib

# Flutter
# export PATH=$PATH:/home/arinal/sources/flutter/flutter.git/bin:/home/arinal/sources/flutter/flutter.git/bin/cache/dart-sdk/bin
# export ANDROID_SDK_ROOT=/home/arinal/apps/Android/Sdk

# Go
export GOPATH=/home/arinal/sources/go/lib
export PATH=$PATH:$GOPATH/bin

# NIX
# export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH

# autoload -U compinit; compinit
