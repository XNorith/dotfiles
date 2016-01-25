#!/bin/sh
IMGDIR=${HOME}/.config/bspwm/background/images
imgswap() {
IMG=$(ls ${IMGDIR} | shuf -n1)
feh --bg-fill ${IMGDIR}/${IMG}
}

while :;
do
imgswap
sleep $(((${RANDOM}%4+1)*300))
done

