#!/bin/bash

git clone https://github.com/esrnru/devopsproject.git
cd devopsproject
sudo docker compose up -d --build
