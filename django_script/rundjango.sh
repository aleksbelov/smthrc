#!/bin/bash

#/home/alex/server/envir/bin/python /home/alex/server/src/manage.py runserver localhost:8080 &> /home/alex/server/django.log &

if [ "$#" = 0 ]
then
	echo "Usage: $0 [d|b]"
	echo "d - debug, b - background"
	exit
fi


if [ "$1" = "d" ]
then
	/home/alex/server/envir/bin/python /home/alex/server/src/manage.py runserver localhost:8080
else
	echo "Run in the background..."
	/home/alex/server/envir/bin/python /home/alex/server/src/manage.py runserver localhost:8080 &> /home/alex/server/django.log &
fi

