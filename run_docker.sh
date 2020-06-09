#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build . --tag ml_microservice:v1

# List docker images
docker image ls

# Run flask app
docker run -p 127.0.0.1:8080:80 ml_microservice:v1