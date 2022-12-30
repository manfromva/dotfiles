#!/bin/bash

style=$1

cp -r ~/arch-rices/$1/* ~/.config/

spicetify config current_theme $style && spicetify apply

betterlockscreen -u ~/Pictures/WallPapers/$style/lockscreen/$style.png 



bspc config top_padding 0 && bspc config bottom_padding 0
bspc wm -r
bspc wm -r

echo "You now have a $style rice!"
