#!/bin/bash
# Warning! Thise script remove all objects from docker
remove_conteiners() {
	docker stop $(docker ps -aq)
	docker rm $(docker ps -aq)
}

remove_all_docker_objects() {
	remove_conteiners
	docker network prune -f
	docker rmi -f $(docker image ls --filter dangling=true -q)
	docker volume rm $(docker volume ls --filter dangling=true -q)
	docker rmi -f $(docker images -qa)
}

if [ $1 ] && [ "$1" = "y" ]
then
	remove_all_docker_objects
else
	echo "Warning! Thise script remove all objects from docker, if were sure what you want delete conteners, networks, images, volume start script with y: sh $0 y"
fi
