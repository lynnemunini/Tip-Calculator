#!/usr/bin/bash
# Ensure Docker Desktop is running locally
docker --version
# Build imageusing the Dockerfile in the current directory
docker build --tag=api .

# List docker images
docker image ls
# Run a container
docker run -d -p 7500:5001 api
docker ps
# Tag image before pushing to dockerhub
docker tag api lynnemunini/api:latest
docker images
# Login to dockerhub from terminal
docker login
# Push image to dockerhub
docker push lynnemunini/api:latest