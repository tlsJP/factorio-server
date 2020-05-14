#!/bin/bash

echo 'Building..'
docker build -t factorio-server .

echo 'Removing old container...'
docker stop factorio-server
docker rm factorio-server

echo 'Starting...'
docker run --name factorio-server \
   -v /external/factorio/saves:/saves \
   -itd \
   -p 34197:34197/udp \
   --restart always \
   factorio-server