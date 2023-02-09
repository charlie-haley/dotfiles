#!/bin/sh
LIST="Lock\nSleep\nReboot\nShutdown"
SELECTED=$(printf $LIST | tofi --height 105 --width 250)


case $SELECTED in
    "Lock" )
        exec swaylock-blur --blur-sigma 30 -- -u;;
    "Sleep" )
        exec systemctl suspend ;;
    "Reboot" )
        exec systemctl reboot ;;
    "Shutdown" )
        exec systemctl poweroff -i ;;
esac
