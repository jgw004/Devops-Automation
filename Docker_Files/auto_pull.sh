#!/bin/bash
## Purpose is to allow user input for 'docker pull' of an image.

echo Which docker image would you like to pull?
echo 'Nginx'[1] or 'helloworld'[2] or 'Wordpress'[3] or 'Postgresql'[4]

read num_inp
num=${#num_inp}

while [[ $num != 1 ]] ; do
	echo Please, choose a number:
	echo 'Nginx'[1] or 'helloworld'[2] or 'Wordpress'[3] or 'Postgresql'[4]
	read num_inp
	num=${#num_inp}
done

number=$((num_inp))
if [["$number" == '1']] ; then
	docker pull Nginx
	fi
if [[$number==2]] ; then
	docker pull helloworld
	fi
if [[$number==3]] ; then
	docker pull Wordpress
	fi
if [[$number==4]] ; then
	docker pull Postgresql
	fi

