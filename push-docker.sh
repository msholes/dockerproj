#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
#docker build --tag=app .


dockerpath="msholes06/dockerproj"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag dockerproj $dockerpath

# Push Image
docker image push $dockerpath 