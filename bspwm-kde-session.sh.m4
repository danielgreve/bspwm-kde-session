#!/bin/sh
#
# Start a KDE session with the bspwm tiling window manager
#

export KDEWM='BSPWM'

exec startkde "$@"
