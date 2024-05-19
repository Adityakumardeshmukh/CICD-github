#!/bin/bash

# Stop and remove the existing container if it's running
docker stop myapp || true
docker rm myapp || true

# Pull the latest Docker image
docker pull usigmoid/cicd-github:latest

# Run the new container
docker run -d --name myapp -p 80:80 usigmoid/cicd-github:latest
