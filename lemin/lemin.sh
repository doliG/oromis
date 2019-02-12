#!/bin/bash

if [ ! -d "$1" ]; then
	printf "Usage: $0 projectpath"
	exit
fi

PROJECT_PATH=$1
BASE=$(dirname $0)

# Dependancies
. "$BASE/../utils/colors.sh"
. "$BASE/../utils/func.sh"

 # Script

# $1 must be map name prefix
testmap () {
	printf "Expected ${C_GRY}|${C_RES} Got ${C_GRY}|${C_RES} Mapfile\n"
	for f in $BASE/maps/$1{01..15}
	do
		#echo "Test on map $f"
		#printf "Expected:  "
		estimated=`grep -m 1 -E "#Here is the number of lines required:" $f | rev | cut -d " " -f1 | rev`
		#printf "Got: "
		got=`$PROJECT_PATH/lem-in < $f | grep "L" | wc -l`
		printf "%8d ${C_GRY}|${C_RES} %3d ${C_GRY}|${C_RES} %s  " $estimated $got $f
		if [ "$got" -eq "$estimated" ]; then
			printf "${C_GRN}Perfect${C_RES}\n"
		else
			printf "${C_YEL}Warning${C_RES} (diff %d)\n" `echo "$got" - "$estimated" | bc`
		fi
	done
}

# $1 must be name prefix, $2 must be generator arg
generatemap () {
	mkdir -p $BASE/maps
	for f in $1{01..15}
	do
		printf "${C_GRY}.${C_RES}"
		./$BASE/generator $2 > "$BASE/maps/$f"
		sleep 1
	done
	echo
}

# $1 must be name prefix, $2 must be generator arg
runtest () {
	printtest "$2"
	printinfo "This test will:
	- generate 15 maps with $2 argument,
	- run lem-in for each map and count lines of output
	- show difference between output and what generator expect."
	waitkeypress
	printinfo "Creating 15 maps $2 with generator"
	generatemap "$1" "$2"
	printinfo "Running lem-in 15 times in $2 map"
	testmap "$1"
}

#############################
runtest "flowone" "--flow-one"
runtest "flowten" "--flow-ten"
runtest "flowthousand" "--flow-thousand"
runtest "big" "--big"
runtest "bigsup" "--big-superposition"

