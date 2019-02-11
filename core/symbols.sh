#!/bin/bash

printtest "Symbols (forbidden functions)"
printinfo "This will print all libc function"
ls "$1"
printf "${C_YEL}Enter binary name: ${C_RES}"
read binaryname

if [ ! -e "${1}/${binaryname}" ]; then
	printerror "Cannot find binary. Please make sure you entered a valid name."
else
	nm -u "${1}/${binaryname}"
fi

