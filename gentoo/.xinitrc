nitrogen --set-zoom ~/pictures/derevo-priroda-fon-1.jpg &
picom &
conky | while read -r; do xsetroot -name "$REPLY"; done &
setxkbmap -layout us,ru  -option grp:rctrl_toggle &
setxkbmap -option ctrl:swapcaps &
unclutter -idle 1 &
xmonad
