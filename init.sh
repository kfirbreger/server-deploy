#!/bin/sh

# Create a place for the docker-compose file
mkdir /srv/docker
cp docker-compose.yaml /srv/docker/docker-compose.yaml
# Adding service file
cp docker-compose.service /etc/systemd/system/docker-compose.service
systemctl enable docker-compose

systemctl start docker-compose
