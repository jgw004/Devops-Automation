#!/bin/bash

echo Hello! How many containers would you like to create: 'one' or 'more'?
read num_container

###Single Container
if [ $num_container == ("one" or "ONE") ] ; then
    echo You have chosen to create ONE container. Is this correct [y,n]?
    read proceed_num_container
    if [ $proceed_num_container = y ] ; then

        # Pull Options
        $1=Nginx
        $2=helloworld
        $3=Wordpress
        $4=Postgresql
        echo Great! Which docker image would you like to pull for your container today?
        echo 'Nginx'[1] or 'helloworld'[2] or 'Wordpress'[3] or 'Postgresql'[4]
        read option_container
        echo You have chosen $option_container. Is this correct [y,n]?
        read option_image

        ###Response is YES
        if [ $option_image = ('y' or 'Y') ] ; then
            if [ $option_container -eq 1 ] ; then
                echo Pulling Nginx image...
                docker pull nginx
            elif [ $option_container -eq 2 ] ; then
                echo Pulling helloworld image...
                docker pull helloworld
                #docker pull dockercloud/hello-world
            elif [ $option_container -eq 3 ] ; then
                echo Pulling Wordpress image...
                docker pull wordpress
            elif [ $option_container -eq 4 ] ; then
                echo Pulling Postgresql image...
                docker pull postgres
            else
                echo Invalid input, please try again.
                ####needs to be extended (while) to give retry####
            fi
        
        ###Response is NO
        elif [ $option_image = ('n' or 'N') ] ; then
            echo Okay.. please enter the image you would like to pull today?
            echo 'Nginx'[1] or 'helloworld'[2] or 'Wordpress'[3] or 'Postgresql'[4]
            read option_container
            echo You have chosen $option_container. Is this correct [y,n]?
            read option_image

            if [ $option_image = ('y' or 'Y') ] ; then
                if [ $option_container -eq 1 ] ; then
                    echo Pulling Nginx image...
                    docker pull nginx
                elif [ $option_container -eq 2 ] ; then
                    echo Pulling helloworld image...
                    docker pull helloworld
                    #docker pull dockercloud/hello-world
                elif [ $option_container -eq 3 ] ; then
                    echo Pulling Wordpress image...
                    docker pull wordpress
                elif [ $option_container -eq 4 ] ; then
                    echo Pulling Postgresql image...
                    docker pull postgres
                else
                    echo Invalid input, please try again.
                    ####needs to be extended (while) to give retry####
                fi

            else
                echo Please type a valid entry next time.
            fi

###Multi-Containers
elif [ $num_container == ("more" or "MORE") ] ; then
    echo You have chosen to create ONE container. Is this correct [y,n]?
    read proceed_num_container
    if [ $proceed_num_container = y ] ; then


else
    
fi



