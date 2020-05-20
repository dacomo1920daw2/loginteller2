#!/bin/bash
#
# Author: dacomo
# Date: 14-5-19
# Version: 1.0
#
clear
#####CHECK IF YOU ARE THE ROOT USER#########################################
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 1
fi
##############################################################################
wget http://www.collados.org/asix1/m01/tu3/loginteller.tar.gz 2> /dev/null
if [[ $? != 0 ]]
then
	echo "File not found"
	exit 2
fi
tar xfz loginteller.tar.gz
make loginteller 2> /dev/null
if [[ $? != 0 ]]
then
	echo "File not compiled"
	exit 3
fi
#make install 2> /dev/null
#if [[ $? != 0 ]]
#then
#	echo "Program not installed"
#	exit 4
#fi
make clean 2> /dev/null
if [[ $? != 0 ]]
then
	echo "Problems cleaning temporary  files"
	exit 5
fi
exit 10
