#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# Change directory iunto folder where application is downlaoded
cd simpleapplicaiton/
# Stop any instances of out application running currently
pm2 stop simpleapplicaiton
# Install application dependecies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# start the application with the process name simpleapplicaiton using pm2
pm2 start ./bin/www --name simpleapplicaiton