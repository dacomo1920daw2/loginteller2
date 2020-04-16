#!/bin/bash
# loginteller2.sh -  shows your current login name and the contents of your personal folder in a tree-like format
# 20160506 - Binefa & Collados
clear
echo "Your login name at the system is : $USER"
echo
echo "Press  the <Enter> key to show the contents of your personal folder"
read
echo
tree /home/$USER
exit 0

