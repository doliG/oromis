#!/bin/bash

printtest "Makefile"

printinfo "List all rules and .PHONY"
waitkeypress
cat $PROJECT_PATH/Makefile | grep -E "^[a-z]+:"
cat $PROJECT_PATH/Makefile | grep "PHONY"

echo
printinfo "Make project"
waitkeypress
make -C $PROJECT_PATH

echo
printinfo "Making again. It must NOT relink."
waitkeypress
make -C $PROJECT_PATH
