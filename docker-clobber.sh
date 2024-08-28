#!/bin/bash

clean_all () {
    docker stop $(docker ps -aq) 
    docker rm $(docker ps -aq) 
    docker rmi $(docker images -aq)
}

read -rp "This will stop and remove all docker containers and images, are you sure you wish to proceed (y/n)? " choice 

case "$choice" in 
    yes|y) clean_all;;
    no|n) echo "Okay";;
    *) echo "You must type either yes, y, no, or n";;
esac 


