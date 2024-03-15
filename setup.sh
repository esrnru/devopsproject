#!/bin/bash

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
git clone https://github.com/esrnru/devopsproject.git
cd devopsproject
sudo docker compose up -d --build
