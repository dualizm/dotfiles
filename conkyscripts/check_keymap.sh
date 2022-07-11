#!/bin/bash


if [[ `xset -q | sed -rn 's/.*LED mask.*(.)[[:xdigit:]]{3}$/\1/p'` -eq 0 ]]
then
  echo "EN";
else
  echo "RU";
fi
