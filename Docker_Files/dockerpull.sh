#!/bin/bash
## Purpose is to allow user input for '#docker pull' of an image.

# Pull Options
$1=Nginx
$2=helloworld
$3=Wordpress
$4=Postgresql

# Collect User Input
echo Hello, which docker image would you like to pull today?
echo 'Nginx'[1] or 'helloworld'[2] or 'Wordpress'[3] or 'Postgresql'[4]
read num_inp

echo You have chosen $num_inp. Is this correct [y,n]?
read answer

if [ $answer = 'y' ] ; then
    if [ $num_inp -eq 1 ] ; then
        echo Pulling Nginx image...
        #docker pull nginx
    elif [ $num_inp -eq 2 ] ; then
        echo Pulling helloworld image...
        #docker pull helloworld
    elif [ $num_inp -eq 3 ] ; then
        echo Pulling Wordpress image...
        #docker pull wordpress
    elif [ $num_inp -eq 4 ] ; then
        echo Pulling Postgresql image...
        #docker pull postgres
    else
        echo Invalid input, please try again.
    fi
else
    echo Please enter a valid number next time..
    echo ........................
    ./dockerpull.sh
fi
