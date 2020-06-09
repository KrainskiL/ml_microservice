#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=lukaszkrainski/ml_microservice:v1

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ml_microservice:v1 lukaszkrainski/ml_microservice:v1

# Push image to a docker repository
docker push lukaszkrainski/ml_microservice:v1