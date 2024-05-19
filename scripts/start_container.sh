#!/bin/bash

# Stop and remove the existing container if it's running
docker stop myapp || true
docker rm myapp || true

# Pull the latest Docker image
docker pull your-dockerhub-username/your-image-name:latest

# Run the new container
docker run -d --name myapp -p 80:80 your-dockerhub-username/your-image-name:latest
