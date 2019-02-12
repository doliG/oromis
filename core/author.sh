#!/bin/bash

#. $BASE/utils/func.sh

#############################
printtest "Author file"
if [ -f "$PROJECT_PATH/author" ]; then
	cat -e "$PROJECT_PATH/author"
elif [ -f "$PROJECT_PATH/auteur" ]; then
	cat -e "$PROJECT_PATH/auteur"
fi
