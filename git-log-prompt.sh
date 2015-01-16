#!/bin/bash
set -e
cd home
git init
#TEMP=`git clone https://$@@github.com/AntonioJFSousa/Trading.git`
git clone https://$@@github.com/AntonioJFSousa/Trading.git

cd Trading/ui_angular_trading
/tmp/node-v0.10.29-linux-x64/bin/npm install
/tmp/node-v0.10.29-linux-x64/bin/node app.js
