#!/bin/sh

feh --bg-scale ~/pic/wallpaper
setxkbmap -layout us,ru -option 'grp:rctrl_toggle'
dwmblocks &

while true; do
  # dwm 2> ~/.dmw.log
  dwm >/dev/null 2>&1
done
