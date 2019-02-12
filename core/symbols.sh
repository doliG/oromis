#!/bin/bash

printtest "Symbols (forbidden functions)"
printinfo "This will print all libc function"
ls "$PROJECT_PATH"
printf "${C_YEL}Enter binary name: ${C_RES}"
read binaryname

if [ ! -e "$PROJECT_PATH/$binaryname" ]; then
	printerror "Cannot find binary. Please make sure you entered a valid name."
else
	nm -u "$PROJECT_PATH/$binaryname"
fi

