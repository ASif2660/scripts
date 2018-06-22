#!/bin/bash


if [ [ $1 -lt 0. ] & [ $1 -gt 1.] ];then

echo " the range of brightness argument goes from 0 to 1"

exit 1

fi


xrandr --output eDP-1 --brightness $1

echo " the brightness is set to $1"


