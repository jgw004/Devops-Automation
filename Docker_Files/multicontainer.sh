#!/bin/bash
### This script is meant to allow users to create single or multiple containers of choice.

echo "."
echo "  How many containers would you like to create: '1' or '1+'? "
read num_container

###Single Container
if [ $num_container = '1' ] ; then
    echo "  You want to create "1" container.. Is this correct [y,n]? "
    read proceed_num_container
    if [[ $proceed_num_container == 'y' || $proceed_num_container == 'Y' ]] ; then
        ./dockerpull.sh
    else
        echo " ."
        echo "  ."
        echo "   ."
        echo "  ."
        echo " ."
        ./multicontainer.sh
    fi

###Multi-Containers
# elif [ $num_container = "1+" ] ; then
#     echo "You want to create "1+" container.. Is this correct [y,n]? "
#     read proceed_num_container
#     if [ $proceed_num_container = 'y' or 'Y' ] ; then
#         ## this is where options go
#         ## pull image and configure container
#     else
#     fi

else
    echo "."
    echo " ..processing.."
    echo "."
fi



