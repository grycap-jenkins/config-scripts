#!/bin/bash
# Try to stop any other container with the same name
if docker ps -a | grep $ContainerName
then 
    if docker inspect $ContainerName | jq '.[0].State.Status' | awk '{if( $1 = "running" ){ exit 0 } else { exit 1 }}'
    then
    	docker stop $ContainerName
    fi
	docker rm $ContainerName
fi
