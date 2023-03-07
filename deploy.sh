#!/usr/bin/env bash

sudo apt update && sudo apt install nodejs npm

sudo npm install -g pm2

pm2 stop simple_application

cd DevOpsCA

npm install

echo $PRIVATE_KEY > privatekeysm.pem
echo $SERVER > server.crt

pm2 start ./bin/www --name simple_application

