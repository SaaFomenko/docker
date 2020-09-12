#!/bin/bash
# Autoinstall script for docker 19.03.9, run with root privileges.
apt-get remove docker docker-engine docker.io containerd runc
apt-get -f install
apt autoremove
apt autoremove -f
apt-get update
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
apt-get -f install
dpkg -i docker-ce-cli_19.03.9~3-0~ubuntu-xenial_amd64.deb
dpkg -i containerd.io_1.2.6-3_amd64.deb
dpkg -i docker-ce_19.03.9~3-0~ubuntu-xenial_amd64.deb
docker run hello-world
