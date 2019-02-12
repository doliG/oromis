#!/bin/bash

printtest "Protected malloc"
printinfo "This will grep all malloc, and libc function which can return null.
You have to check manually if they are correctly protected."
waitkeypress

find $PROJECT_PATH -name "*.c" -exec grep -Hn --colour \
	"\(malloc\|ft_memalloc\|ft_strdup\|ft_strjoin\|ft_strmap\|ft_strnew\|ft_strsplit\|ft_strsub\)(" {} \;

