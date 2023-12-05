#!/bin/bash
## Purpose is to allow users to pull a single docker image.
###an improvement would be to increase 'count' and the index of a list containing \
### available options to pull.


#echo ""
echo "|"

# Collect User Input
echo "  Which docker image would you like to pull today?"
echo "  'Nginx'[1] or 'helloworld'[2] or 'Wordpress'[3] or 'Postgresql'[4]"
read num_inp

echo "  You have chosen $num_inp.. Is this correct [y,n]?"
read answer

# Ask user if theyre happy with their option\
#  and if they want to add a tag to their image
if [ $answer = 'y' ] ; then

    echo "  Great! Would you like to tag this image [y,n]?"
    read tag_option

## Yes tag
    if [ $tag_option = 'y' ] ; then
	echo "  Okay, what would you like the tag to say?"
	read tag_answer

    	if [ $num_inp -eq 1 ] ; then
    	    echo "Pulling Nginx image as $tag_answer..."
    	    docker pull nginx:$tag_answer
    	elif [ $num_inp -eq 2 ] ; then
    	    echo "Pulling helloworld image as $tag_answer..."
    	    docker pull helloworld:$tag_answer
    	elif [ $num_inp -eq 3 ] ; then
    	    echo "Pulling Wordpress image as $tag_answer..."
    	    docker pull wordpress:$tag_answer
    	elif [ $num_inp -eq 4 ] ; then
    	    echo "Pulling Postgresql image as $tag_answer..."
    	    docker pull postgres:$tag_answer
    	else
    	    echo "."
    	    echo "Invalid input, please try again."
	    ./dockerpull.sh
    	fi
## No tag
    else
        if [ $num_inp -eq 1 ] ; then
            echo "Pulling Nginx image..."
            docker pull nginx
        elif [ $num_inp -eq 2 ] ; then
            echo "Pulling helloworld image..."
            docker pull helloworld
        elif [ $num_inp -eq 3 ] ; then
            echo "Pulling Wordpress image..."
            docker pull wordpress
        elif [ $num_inp -eq 4 ] ; then
            echo "Pulling Postgresql image..."
            docker pull postgres
        else
            echo "."
            echo "Invalid input, please try again."
	    ./dockerpull.sh
        fi
    fi
else
    echo "-"
    ./dockerpull.sh
fi


