#!/bin/bash

##
# Print
##
printtest () {
	printf "${C_CYA}${C_UND}\nTest:${C_RESU} ${1}${C_RES}\n"
}

printinfo () {
	printf "${C_LBL}${C_UND}Info:${C_RES} ${C_GRY}${1}${C_RES}\n"
}

printerror () {
	printf "${C_RED}${C_UND}Error:${C_RES} ${C_GRY}${1}${C_RES}\n"
}


##
# Others
##
waitkeypress () {
	printf "${C_GRY}Press enter to continue...${C_RES} "
	read
}

##
# File tests
##

fileexist () {
	if ! [ -f "$1" ]; then
		printerror "File $1 does not exist."
		exit 1
	fi
}

fileisexecutable () {
	if ! [ -x "$1" ]; then
		printerror "File $1 is not executable."
		printinfo "You can try to run 'chmod u+x $1' to fix this"
		exit 1
	fi
}
