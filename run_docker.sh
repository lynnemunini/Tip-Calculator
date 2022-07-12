#!/usr/bin/bash

# Build image
docker build --tag=app .

# List docker images
docker image ls

# Run app
docker run -it app bash
