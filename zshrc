echo "\n"
figlet -f 3d "Don't use" | lolcat
echo "\n"
figlet -f Bloody "mouse" | lolcat

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit snippet PZT::modules/environment/init.zsh
zinit snippet PZT::modules/history/init.zsh
zinit snippet PZT::modules/utility/init.zsh
zinit snippet PZT::modules/fasd/init.zsh
zstyle ':prezto:module:editor' dot-expansion 'yes'
zstyle ':prezto:module:editor' key-bindings 'vi'

zinit ice wait'0' blockf lucid; zinit light zsh-users/zsh-completions
zinit ice lucid wait"1" lucid atload"!_zsh_autosuggest_start"; zinit load zsh-users/zsh-autosuggestions
zinit ice lucid wait"0" atclone"sed -ie 's/fc -rl 1/fc -rli 1/' shell/key-bindings.zsh" \
  atpull"%atclone" multisrc"shell/{completion,key-bindings}.zsh" id-as junegunn/fzf_completions \
  pick"/dev/null"
zinit light junegunn/fzf
zinit light mafredri/zsh-async
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit ice from'gh-r' as'program'; zinit light sei40kr/fast-alias-tips-bin
zinit light sei40kr/zsh-fast-alias-tips

zinit ice wait"1" atinit"zpcompinit; zpcdreplay" lucid; zinit light zdharma-continuum/fast-syntax-highlighting
zinit light Aloxaf/fzf-tab

# Colors
zinit light 'chrissicool/zsh-256color'
zinit ice atclone"dircolors -b src/dir_colors > c.zsh" \
            atpull'%atclone' \
            pick"c.zsh" \
            nocompile'!'
zinit light arcticicestudio/nord-dircolors
zinit ice atload"base16_${BASE16_THEME}"
zinit light "chriskempson/base16-shell"
zinit ice lucid wait'0' \
            src"bash/base16-${BASE16_THEME}.config" \
            pick"bash/base16-${BASE16_THEME}.config" nocompile'!'
zinit light 'nicodebo/base16-fzf'

autoload -Uz compinit

if [ $(date +'%j') != $(date -r ${ZDOTDIR:-$HOME}/.zcompdump +'%j') ]; then
  compinit;
else
  compinit -C;
fi

alias -g P="| "
alias -g PP="pbpaste | "
alias -g C="| pbcopy"
alias -g N="| /dev/null"
alias -g G='| grep'
alias -g L='| bat'
alias -g J='| jq'
alias -g T="| column -t -s $'\t'"
alias -g PF="| fzf"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias tm='tmux'
alias em='emacs -nw'
alias emc='emacsclient -nw'
alias e.='e .'
alias ff=ranger

source awsp_functions.sh
alias awsall="_awsListProfile"
alias awxp="_awsSwitchProfile"
alias awsp="_awsSetProfile"
alias awswho="aws configure list"
# Remove mode switching delay.
KEYTIMEOUT=5

# Change cursor shape for different vi modes.
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] ||
           [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'

    elif [[ ${KEYMAP} == main ]] ||
             [[ ${KEYMAP} == viins ]] ||
             [[ ${KEYMAP} = '' ]] ||
             [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
    echo -ne '\e[5 q'
}

function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}
function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^f' pet-select

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zinit snippet PZT::modules/gnu-utility/init.zsh
# zstyle ':prezto:module:utility' safe-ops 'no'
# zinit ice wait'1' lucid; zinit snippet PZT::modules/directory/init.zsh
# zinit snippet PZT::modules/completion/init.zsh
# zinit snippet PZT::modules/osx/init.zsh
# zinit snippet PZT::modules/gpg/init.zsh
# zstyle ':prezto:module:editor' ps-context 'yes'
# zstyle ':prezto:module:prompt' managed 'yes'
# zinit snippet PZT::modules/editor/init.zsh
# zinit load "jreese/zsh-titles"
# zstyle ':prezto:module:terminal' auto-title 'yes'
# zinit snippet PZT::modules/terminal/init.zsh

# zinit ice lucid atload"unalias gcd"
# zinit snippet OMZ::plugins/git/git.plugin.zsh

# zinit ice wait'0' lucid; zinit light "akarzim/zsh-docker-aliases"
# zinit ice wait'1' as"completion" lucid
# zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker
# zinit ice wait'1' as"completion" lucid
# zinit snippet https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/terraform/_terraform

# zinit ice depth'1'; zinit light denysdovhan/spaceship-prompt
# zinit ice lucid from"gh-r" \
#   as"command" pick"starship" \
#   atload"!eval \$(starship init zsh)"
# zinit light starship/starship

# zinit ice wait'0' lucid atload"unalias d"; zinit snippet OMZ::plugins/fasd/fasd.plugin.zsh

# zinit ice wait"0" lucid; zinit load zdharma-continuum/history-search-multi-word
# zinit light zsh-users/zsh-history-substring-search
#   zmodload zsh/terminfo
#   [ -n "${terminfo[kcuu1]}" ] && bindkey "${terminfo[kcuu1]}" history-substring-search-up
#   [ -n "${terminfo[kcud1]}" ] && bindkey "${terminfo[kcud1]}" history-substring-search-down
#   bindkey -M emacs '^P' history-substring-search-up
#   bindkey -M emacs '^N' history-substring-search-down
#   bindkey -M vicmd 'k' history-substring-search-up
#   bindkey -M vicmd 'j' history-substring-search-down

# Python {{{
# zinit ice lucid wait'1' atinit"local ZSH_PYENV_LAZY_VIRTUALENV=true" \
#   atload"pyenv virtualenvwrapper_lazy"
# zinit light davidparsson/zsh-pyenv-lazy
# zinit ice svn wait'2' silent; zinit snippet OMZ::plugins/pyenv
# }}}


# Programs {{{
# zinit ice as"program" make'!' \
#             atclone'./direnv hook zsh > zhook.zsh' \
#             atpull'%atclone' src"zhook.zsh"
# zinit light direnv/direnv

# zinit ice from"gh-r" as"program" bpick"krew.tar.gz" \
#             mv"krew-darwin_amd64 -> krew" pick"krew" \
#             atclone"rm -f krew-* && ./krew install krew && ./krew update" \
#             atpull"%atclone" has"kubectl"
# zinit light kubernetes-sigs/krew
# zinit ice wait'0' lucid; zinit snippet OMZ::plugins/kubectl/kubectl.plugin.zsh
# }}}

# zinit ice wait"0" lucid if'[[ ! $TERM =~ ".*kitty" ]]'; zinit light marzocchi/zsh-notify

# Spaceship prompt {{{
# SPACESHIP_PROMPT_SEPARATE_LINE=false
# SPACESHIP_PROMPT_ORDER=(
#   dir
#   host
#   vi_mode
#   jobs
#   char
# )
# SPACESHIP_RPROMPT_ORDER=(
#   terraform
#   kubectl_context
#   aws
#   venv
#   git
#   exit_code
# )
# SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_CHAR_SYMBOL='❯ '
# SPACESHIP_VI_MODE_SUFFIX='❯'
# SPACESHIP_VI_MODE_INSERT='❯'
# SPACESHIP_VI_MODE_NORMAL='❮'
# SPACESHIP_VI_MODE_COLOR='magenta'
# SPACESHIP_AWS_SHOW=false
# SPACESHIP_AWS_SYMBOL='☁  '
# SPACESHIP_DIR_TRUNC_REPO=false
# SPACESHIP_KUBECONTEXT_SHOW=false
# SPACESHIP_KUBECONTEXT_SYMBOL='⎈  '
# SPACESHIP_PYENV_SHOW=false
# SPACESHIP_EXIT_CODE_SHOW=true
# SPACESHIP_EXIT_CODE_SYMBOL='✘ '
# SPACESHIP_GIT_STATUS_PREFIX=' '
# SPACESHIP_GIT_STATUS_SUFFIX=''
# SPACESHIP_GIT_STATUS_COLOR='magenta'
# SPACESHIP_TERRAFORM_SYMBOL=' '
# # }}}

# export HOMEBREW_NO_ANALYTICS=1
# export KEYTIMEOUT=1
# . $(brew --prefix asdf)/asdf.sh

