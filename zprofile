export EDITOR=nvim
export VISUAL=nvim
export PAGER=bat

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

# xset r rate 200 30

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  # exec startx
  exec Hyprland
fi
