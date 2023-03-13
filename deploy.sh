#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# Stop any instances of out application running currently
pm2 stop simpleapplication
# Change directory iunto folder where application is downlaoded
cd simpleapplication/
# Install application dependecies
npm install
# start the application with the process name simpleapplication using pm2
pm2 start ./bin/www -- name simpleapplication