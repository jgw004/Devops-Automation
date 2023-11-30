#!/bin/bash
## Purpose is to allow users to pull a single docker image.
###an improvement would be to increase 'count' and the index of a list containing \
### available options to pull.


echo ""
echo " _"

# Collect User Input
echo "  Which docker image would you like to pull today?"
echo "  'Nginx'[1] or 'helloworld'[2] or 'Wordpress'[3] or 'Postgresql'[4]"
read num_inp

echo "  You have chosen #$num_inp.. Is this correct [y,n]?"
read answer

if [ $answer = 'y' ] ; then
    if [ $num_inp -eq 1 ] ; then
        echo "Pulling image image..."
        #docker pull nginx
    elif [ $num_inp -eq 2 ] ; then
        echo "Pulling helloworld image..."
        #docker pull helloworld
    elif [ $num_inp -eq 3 ] ; then
        echo "Pulling Wordpress image..."
        #docker pull wordpress
    elif [ $num_inp -eq 4 ] ; then
        echo "Pulling Postgresql image..."
        #docker pull postgres
    else
        echo "."
        echo "Invalid input, please try again."
    fi
else
    echo "-"
    ./dockerpull.sh
fi


