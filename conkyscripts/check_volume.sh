#!/bin/bash

# Volume 100% = 墳
# Volume 100% = 奔
# Volume 100% = 
# Volume 100% = 


if [[ $(pactl list sinks | grep -m 1 "Sound off:" | cut -d " " -f3) == "yes" ]]
then
    printf "婢0%";
else
    vol=$(pactl list sinks | grep -m 1 "Volume:" | tr -s ' ' | cut -d " " -f5);
    printf "墳 $vol%";
fi
