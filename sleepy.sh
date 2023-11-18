#!/bin/bash

# refer to the number of parameters in the CLI
file="$1"

# file exists
[ -e "$file" ] && echo "Yes, $file is a file." || echo "No, $file is not a file or does not exist."

# allow user input at the CLI
#read -p "What is your name? " NAME
#echo ""
#echo "Nice to meet you ${NAME}!"

