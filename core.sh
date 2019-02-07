#!/bin/bash

. utils/colors.sh
. utils/func.sh

if [ ! -d $1 ]; then
	printf "Usage: $0 projectpath"
fi

#############################
printstep "Step 1" "Author file"
printinfo "Could fail is there is 'auteur' file instead of 'author' file."
if [ -f $1/author ]; then
	cat -e $1/author
elif [ -f $1/auteur ]; then
	cat -e $1/auteur
fi
waitkeypress

#############################
printstep "Step 2" "Norminette"
printinfo "No ouput = success"
find $1 -name "*.[ch]" | xargs norminette | grep -B 1 "Warning\|Error"
waitkeypress

#############################
printstep "Step 3" "Operator at the end of the line"
# plus +
# mult *
# minus -
# divider /
# and &
# or |
# percent %
# interrogation ?
# equal =
# right chevron >
# left chevron <
# exclamation !
# double point :

printinfo "No ouput = success. It could countain false positive"
find $1 -name "*.[ch]" -exec grep -EHn "\+$| \*$|\-$| \/$|\&$|\|$|\%$|\?$|\=$| >$| <$|\!$|\:$" {} \;
# Note : check with and without backslash
waitkeypress

#############################
printstep "Step 4" "Makefile"

printinfo "List all rules and .PHONY"
cat $1/Makefile | grep -E "^[a-z]+:"
cat $1/Makefile | grep "PHONY"
waitkeypress

printinfo "Make project"
make -C $1
waitkeypress

printinfo "Making again. It must NOT relink."
make -C $1
waitkeypress
