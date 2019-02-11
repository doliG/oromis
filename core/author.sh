#!/bin/bash

#. $BASE/utils/func.sh

#############################
printtest "Author file"
if [ -f "$1/author" ]; then
	cat -e "$1/author"
elif [ -f "$1/auteur" ]; then
	cat -e "$1/auteur"
fi
