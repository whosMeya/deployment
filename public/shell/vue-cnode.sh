#!/bin/sh
echo '--build start--'
cd /root/code/vue-cnode
git checkout .
git checkout master
git pull
npm install
npm run build
rm -rf /root/libs/vue-cnode/*
mv /root/code/vue-cnode/dist/* /root/libs/vue-cnode
echo '--build end--'