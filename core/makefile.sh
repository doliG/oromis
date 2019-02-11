#!/bin/bash

printtest "Makefile"

printinfo "List all rules and .PHONY"
waitkeypress
cat $1/Makefile | grep -E "^[a-z]+:"
cat $1/Makefile | grep "PHONY"

echo
printinfo "Make project"
waitkeypress
make -C $1

echo
printinfo "Making again. It must NOT relink."
waitkeypress
make -C $1
