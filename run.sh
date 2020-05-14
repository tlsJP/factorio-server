#!/bin/bash

SAVEFILE=$1
PORT=$2
NAME=$3

echo 'Building..'
docker build --no-cache -t factorio-server .

echo 'Removing old container...'
docker stop $NAME
docker rm $NAME

echo 'Starting...'
docker run --name $NAME \
   -v /external/factorio/saves:/saves \
   -itd \
   -p $PORT:34197/udp \
   --restart always \
   factorio-server \
   --start-server /saves/$SAVEFILE