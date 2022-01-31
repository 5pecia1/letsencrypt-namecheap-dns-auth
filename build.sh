#!/bin/bash

NAME=5pecia1/certbot-namecheap
VER=${1:-1.1.0}

docker build -t $NAME:$VER .
docker tag $NAME:$VER $NAME:latest