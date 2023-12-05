#!/bin/bash
### This script is meant to allow users to create single or multiple containers of choice.

echo ""
echo "------"
echo " >> How many containers would you like to create: '1' or '1+'? "
read num_container

###Single Container
if [ $num_container = '1' ] ; then
    echo " >> You want to create "1" container.."
    echo "  >> Is this correct [y,n]?"
    read one_container
    if [[ $one_container == 'y' || $one_container == 'Y' ]] ; then
        ./dockerpull.sh
    else
        echo ""
        echo "."
        echo "."
        ./multicontainer.sh
    fi

###Multi-Containers
elif [ $num_container = "1+" ] ; then
    echo " >> You want to create containers for a 'Hello-World' application using 'Nginx', and 'Postgresql'.."
    echo "  >> Is this correct [y,n]? "
    read more_container
    if [[ $more_container == 'y' || $more_container == 'Y' ]] ; then
        echo "  Creating containers..."
        ./docker.compose.yml up
    else
        echo ""
        echo "."
        echo "."
        ./multicontainer.sh
    fi

else
    echo ""
    echo "  --> ENTER: '1' or '1+' <--"
    ./multicontainer.sh
fi



