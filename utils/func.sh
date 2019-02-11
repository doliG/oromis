#!/bin/bash

printtest () {
	printf "${C_MAG}${C_UND}\nTest:${C_RESU} ${1}${C_RES}\n"
}

printinfo () {
	printf "${C_LBL}${C_UND}Info:${C_RES} ${C_GRY}${1}${C_RES}\n"
}

printerror () {
	printf "${C_RED}${C_UND}Error:${C_RES} ${C_GRY}${1}${C_RES}\n"
}


waitkeypress () {
	printf "${C_GRY}Press enter to continue...${C_RES} "
	read
}
