#!/bin/bash

#############################
printtest "Norminette"
printinfo "Basic norminette test. No output = success."
waitkeypress

find $1 -name "*.[ch]" | xargs norminette | grep -B 1 "Warning\|Error"

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

echo
printinfo "Operator at the end of lines.
${C_YEL}It could countain false positive.
No ouput = success."
waitkeypress

find $1 -name "*.[ch]" -exec grep --colour -EHn "\+$| \*$|\-$| \/$|\&$|\|$|\%$|\?$|\=$| >$| <$|\!$|\:$" {} \;

# Note : check with and without backslash

