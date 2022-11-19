#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="jarmanr/machinelearning:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run machinelearning\
    --image=$dockerpath\
    --port=80 --labels app=machinelearning

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/machinelearning 8000:80

