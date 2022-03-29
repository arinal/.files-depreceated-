# MOUSE='
#               /   \                  /      \
#              |      \              /          \
#             |       |█o          o|            |
#             \    \  |███o______o██|   /        |
#              `\   \\███████████████\//        /
#                \ _o\████████████████//. ___ /
#                  ███████████████████████o.
#                 ███* `███████████*  `█████
#                 ██.   █████████|    .█████ o
#                 `███⣿⣿█████████⣿⣿⣿⣿█████████o
#               .██⣿⣿████████████████████⣿███████o
#              ██████⣿████████████████⣿████████████o
#             ████████⣿⣿_.███████████⣿⣿_█████████████
#            █████⣿████o`(____)/.███████████████████
#            █████ ██⣿⣿⣿/⣿⣿||⣿⣿\⣿⣿⣿⣿⣿⣿██████████████
#            █████ █⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ██████'
# echo "\n"
# figlet -f 3d "Don't use" | lolcat
# figlet -f Bloody "mouse" | lolcat
# echo $MOUSE | lolcat
show_logos=("colorscript -r" "pokemon-colorscripts -r")
$(shuf -n1 -e "${show_logos[@]}")
echo "\n"

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

zinit snippet PZT::modules/fasd/init.zsh
zinit snippet PZT::modules/environment/init.zsh
zinit snippet PZT::modules/history/init.zsh
zinit snippet PZT::modules/utility/init.zsh
zinit snippet PZT::modules/completion/init.zsh
bindkey -v

zinit ice lucid wait"0" atclone"sed -ie 's/fc -rl 1/fc -rli 1/' shell/key-bindings.zsh" \
  atpull"%atclone" multisrc"shell/{completion,key-bindings}.zsh" id-as junegunn/fzf_completions \
  pick"/dev/null"
zinit light junegunn/fzf

# zinit ice wait"2" as"command" from"gh-r" lucid \
#   mv"zoxide*/zoxide -> zoxide" \
#   atclone"./zoxide init zsh > init.zsh" \
#   atpull"%atclone" src"init.zsh" nocompile'!'
# zinit light ajeetdsouza/zoxide

zinit light Aloxaf/fzf-tab
zinit light wookayin/fzf-fasd
zinit light mafredri/zsh-async
zinit ice wait'0' blockf lucid; zinit light zsh-users/zsh-completions
zinit ice lucid wait"1" lucid atload"!_zsh_autosuggest_start"; zinit load zsh-users/zsh-autosuggestions
zinit ice from'gh-r' as'program'; zinit light sei40kr/fast-alias-tips-bin
zinit light sei40kr/zsh-fast-alias-tips
zinit light zdharma-continuum/fast-syntax-highlighting
zinit ice depth=1; zinit light romkatv/powerlevel10k

## Colors
BASE16_THEME=horizon-dark
zinit ice atload"base16_${BASE16_THEME}"
zinit light "chriskempson/base16-shell"
zinit ice lucid wait'0' \
            src"bash/base16-${BASE16_THEME}.config" \
            pick"bash/base16-${BASE16_THEME}.config" nocompile'!'
zinit light 'nicodebo/base16-fzf'

## Set auto completions
autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C aws_completer aws

# alias z='cd'
alias j='cd'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias tm='tmux'
alias em='emacs -nw'
alias emc='emacsclient -nw'
alias e.='e .'
alias qi=quite-intriguing
alias f=ranger

source awsp_functions.sh
alias awsall="_awsListProfile"
alias awxp="_awsSwitchProfile"
alias awsp="_awsSetProfile"
alias awswho="aws configure list"

## Editor mode
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^v' edit-command-line
bindkey -M vicmd '^v' edit-command-line

## Vi mode
# KEYTIMEOUT=5
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]]  ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]]     ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
echo -ne '\e[5 q'
preexec() {
  echo -ne '\e[5 q'
}

## Pet snippet
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

# ## p10k, to customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
