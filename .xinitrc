nitrogen --set-zoom ~/Pictures/oboi.png &
picom &
conky | while read -r; do xsetroot -name "$REPLY"; done &
setxkbmap -layout us,ru  -option grp:alt_shift_toggle &
unclutter -idle 1 &
dwm
