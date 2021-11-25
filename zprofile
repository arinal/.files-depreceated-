export EDITOR=lvim
export VISUAL=lvim
export PAGER=bat

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

xset r rate 200 30

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
