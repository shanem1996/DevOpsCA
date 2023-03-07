#!/usr/bin/env bash

sudo apt update && sudo apt install nodejs npm

sudo npm install -g pm2

pm2 stop simple_application

npm install

pm2 start ./DevOpsCA/bin/www --name simple_application

