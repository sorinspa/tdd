#!/bin/bash
set -e

# used term colors
GRAY="\033[0;90m"
RED="\033[0;91m"
GREEN="\033[0;92m"
YELLOW="\033[0;93m"
PURPLE="\033[0;94m"
PINK="\033[0;95m"
CYAN="\033[0;96m"
RESET="\033[0;0m"
BOLD="\033[;1m"
REVERSE="\033[;7m"

# capture start time
s0=$(date +"%s")
t0=$(date +"%T")

printf "\n\n\n\n\n\n"
printf "\n${GRAY}+---< ${RESET}${t0}${GRAY} >---${YELLOW} started ${GRAY}-----------------------------------------+${RESET}\n"

#command you wish to be executed to run tests, eg.
phpunit tests

lastErr=$?

if [[ $lastErr == 0 ]]
	then
		COLOR=$GREEN
	else
		COLOR=$RED
fi

# compute time diff
s1=$(date +"%s")
t1=$(date +"%T")
secs=$(expr $s1 - $s0)


printf "\n${GRAY}+---<${COLOR} $t1 ${GRAY}>---${COLOR} finished ${GRAY}----------------------------------------+"
printf "\n${GRAY}+------------------------------------ elapsed time --<${COLOR} $secs ${GRAY}seconds >---+${RESET}"
printf "\n"
