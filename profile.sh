#!/bin/sh

# Start X
if [ -z "$DISPLAY" ] && [ $(tty) = "/dev/tty1" ]; then
  # Fix login security hole (^c)
  xinit "$XDG_CONFIG_HOME/xorg/xinitrc" -- /usr/bin/X -nolisten tcp &
  logout
fi
