#!/usr/bin/env bash

# This is your Docker ID/path
dockerpath=lukaszkrainski/ml_microservice:v1

# Run the Docker Hub container with kubernetes
kubectl run ml-microservice --image=$dockerpath --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward deployment/ml-microservice 8080:80