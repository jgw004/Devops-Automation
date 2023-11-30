#!/bin/bash

echo Hello! How many containers would you like to create: 'one' or 'more'?
read multi

if [ $multi == "one" ] ; then
	if [ $answer = y ] ; then
    if [ $num_inp -eq 1 ] ; then
        echo Pulling Nginx image...
        docker pull nginx
    elif [ $num_inp -eq 2 ] ; then
        echo Pulling helloworld image...
        docker pull helloworld
        #docker pull dockercloud/hello-world
    elif [ $num_inp -eq 3 ] ; then
        echo Pulling Wordpress image...
        docker pull wordpress
    elif [ $num_inp -eq 4 ] ; then
        echo Pulling Postgresql image...
        docker pull postgres
    else
        echo Invalid input, please try again.
    fi



