picom &
feh --bg-scale ~/Pictures/oboi.png &
conky | while read -r; do xsetroot -name "$REPLY"; done &
setxkbmap -layout us,ru  -option grp:alt_shift_toggle &
dwm
