#!/bin/bash

printtest "Symbols (forbidden functions)"
printinfo "This will print all libc function"

ls "$PROJECT_PATH"
printf "${C_YEL}Enter binary name: ${C_RES}"
read binaryname
fileexist "$PROJECT_PATH/$binaryname"
fileisexecutable "$PROJECT_PATH/$binaryname"

nm -u "$PROJECT_PATH/$binaryname"

