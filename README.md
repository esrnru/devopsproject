# PyEditorial Development Environment Setup
## About
This repository provides scripts to automate the setup of a development environment (Ubuntu 22.04 LTS) for PyEditorial, an open-source Python/Django CMS, using Docker containers.

![Diagram](./diagram.png)
## Development Environment Setup

To start preparing the development environment, the following commands need to be executed first.
> To avoid encountering any errors, you need to have root privileges.

1. Create a file setup.sh
   `touch setup.sh`
2. Make the file executable
   `chmod +x setup.sh`
3. Open the file by using any text editor
   `vim setup.sh`
4. Copy the following commands and paste them in **setup.sh**, then save and exit.
   ```
   #!/bin/bash

   sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
   git clone https://github.com/esrnru/devopsproject.git
   cd devopsproject
   sudo docker compose up -d --build
   ```
5. Execute the file `./setup.sh` or `bash setup.sh`

After these steps, all required dependencies will be installed and containers will be up and running.
