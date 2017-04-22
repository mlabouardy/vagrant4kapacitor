#!/bin/sh

sudo bash

## Install Docker

apt-get update && \
apt-get install -y apt-transport-https \
                   ca-certificates \
                   vim \
                   curl \
                   gnupg2 \
                   software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

apt-get update && \
apt-get install docker-ce -y

## Install Docker Compose

curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
