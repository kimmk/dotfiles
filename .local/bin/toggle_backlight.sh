#!/usr/bin/bash
blf=/tmp/backlight_value
if [ -e $blf ]
then
    cat $blf | xargs xbacklight -set
    rm $blf
else
    xbacklight -get > $blf
    xbacklight -set 0
fi
