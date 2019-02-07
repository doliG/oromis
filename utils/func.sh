#!/bin/bash

printstep () {
	printf "${C_MAG}${C_UND}${1}:${C_RESU} ${2}${C_RES}\n"
}

printinfo () {
	printf "${C_LBL}${C_UND}Info:${C_RES} ${C_GRY}$1${C_RES}\n"
}

waitkeypress () {
	printf "${C_GRY}Press enter to continue...${C_RES}\n"
	read
}
