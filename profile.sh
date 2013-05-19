#!/bin/sh

have() { which "$1" &>/dev/null; }

# Start {ssh,gpg}-agent
have keychain && eval $(keychain --eval --quiet)

# Start X
if [ -z "$DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
  # Fix login security hole (^c)
  xinit "$XDG_CONFIG_HOME/xorg/xinitrc" -- /usr/bin/X -nolisten tcp &
  logout
fi
