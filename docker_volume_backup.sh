#!/bin/bash
# https://medium.com/@loomchild/backup-restore-docker-named-volumes-350397b8e362
# backup some_volume to /$PWD/backup_doker_volume/some_archive.tar.bz2
BDV_DIR='backup_docker_volume'
mkdir $BDV_DIR
if [ $1 ]
then
	docker run --rm -v $1:/volume -v /$PWD/$BDV_DIR:/backup alpine tar -cjf /backup/$1.tar.bz2 -C /volume ./
else
	echo "syntacsis this script: sh $0 volume_name"
fi
