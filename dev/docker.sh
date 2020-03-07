#!/bin/bash

if [ -z "command -v docker" ]; then
    curl -sL https://get.docker.com | sudo -E bash -
    sudo usermod -aG docker $USER
    sudo newgrp docker
fi

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
