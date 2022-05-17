#!/bin/bash

if [[ $1 == "-" ]]; then
  xinput list | grep Touchpad

elif [[ $2 == "-" ]]; then
  xinput list-props $1 | grep 'Tapping Enabled'
  
elif [[ $3 == "on" ]]; then
  clear
  xinput set-prop $1 $2 1
  echo -e "Touchpad Tapping has been turned \e[1;32mON\e[0m\n"

elif [[ $3 == "off" ]]; then
  clear
  xinput set-prop $1 $2 0
  echo -e "Touchpad Tapping has been turned \e[1;31mON\e[0m\n"
  
fi

