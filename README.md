Bash scripts for docker
=======================

Install docker 19.03.9
----------------------

$ sudo sh install_docker_19.03.9.sh

Add current user to docker group 
--------------------------------

$ sudo usermod -aG docker $USER

Backup docker volume 
--------------------

$ sh docker_volume_backup.sh volume_name

Remove all docker objects 
-------------------------

$ sh remove_all_objects_doker.sh
