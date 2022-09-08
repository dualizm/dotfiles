#!/bin/bash

netname=$(nmcli | grep -w "connected to" | awk '{print $NF}');
netip=$(nmcli | grep -w "connected to" -A 4 | grep -w "inet4" | awk '{print $NF}')

if [[ `nmcli | grep -w "connected"` == *"connected"* ]]
then
  # printf " $netip $netname";
  printf " $netname";
else
  printf "";
fi

