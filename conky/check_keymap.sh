#!/bin/bash

# xset q | grep LED

check_caps() # take 1 string
{
  if [[ `xset q | sed -rn '/1$/ p'` -eq 0 ]]
  then
    echo ${1,,};
  else
    echo ${1^^};
  fi

}

if [[ `xset q | sed -rn 's/.*LED mask.*(.)[[:xdigit:]]{3}$/\1/p'` -eq 0 ]]
then
  check_caps "en";
else
  check_caps "ru";
fi
