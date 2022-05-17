#!/bin/bash

printf "\n\e[31mCODEX-SERVER PASSWORD: \e[0m"
read PASSWORD
clear
sshpass -p $PASSWORD ssh user-x@192.168.0.146
