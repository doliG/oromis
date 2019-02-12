#!/bin/bash

if [ ! -d "$1" ]; then
	printf "Usage: $0 projectpath"
	exit
fi

PROJECT_PATH=$1
BASE=$(dirname $0)

# Dependancies
. "$BASE/utils/colors.sh"
. "$BASE/utils/func.sh"

# Scripts
. "$BASE/core/author.sh"
. "$BASE/core/header.sh"
. "$BASE/core/norme.sh"
. "$BASE/core/protected.sh"
. "$BASE/core/makefile.sh"
. "$BASE/core/symbols.sh"

#############################
: ' Todo
- [x] author file
- [x] Header (by)
- [x] Norminette
- [x] Operator at the end of a line
- [x] Makefile
	- rules
	- relink
	- recompilation dun seul fichier
- [x] Malloc
- [x] Fonction interdites (nm -u)
- [ ] Include non utilisés
'
