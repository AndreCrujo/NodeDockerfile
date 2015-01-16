#!/bin/bash
set -e
cd home
git init
#TEMP=`git clone https://$@@github.com/AntonioJFSousa/Trading.git`
git clone https://$@@github.com/AntonioJFSousa/Trading.git

cd Trading/ui_angular_trading
node app.js


#utrade.js
#echo "ola"
top