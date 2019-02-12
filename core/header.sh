#!/bin/bash

#############################
printtest "Header"
printinfo "This will grep \"Created:\" in source header.
If you have multiple author, you can enter author1|author2
No output = success"
printf "${C_YEL}Enter author name: ${C_RES}"
read author
find $PROJECT_PATH -name "*.[ch]" -exec grep -LE "Created:.+${author}" {} \; | xargs grep -H "Created:"

