nitrogen --set-zoom ~/pictures/dve-devochki-na-kryshe-letniaia-noch-zakat-derevnia.jpg &
conky | while read -r; do xsetroot -name "$REPLY"; done &
~/scripts/keyboard-reset.sh &
unclutter -idle 1 &
picom &
dwm
