#!/bin/sh

source "$XDG_CONFIG_HOME/arch/aliases.sh"
source "$XDG_CONFIG_HOME/arch/exports.sh"

z="/etc/profile.d/z.sh"
[ -f "$z" ] && source "$z"
