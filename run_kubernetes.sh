#!/usr/bin/bash
dockerpath="lynnemunini/api:latest"

# Run in Docker Hub container with kubernetes
kubectl run api\
    --image=$dockerpath\
    --port=80 --labels app=api

# List the pods
kubectl get pods

# Forwards the container port to a host
kubectl port-forward api --address 0.0.0.0 8000:5001