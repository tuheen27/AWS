#!/bin/bash

# Build script for Docker container

echo "Building DevOps Workflow Docker image..."

# Build the Docker image
docker build -t devops-workflow:latest .

echo "Build completed!"
echo ""
echo "To run the container:"
echo "docker run -p 5000:5000 devops-workflow:latest"
echo ""
echo "Or use docker-compose:"
echo "docker-compose up -d"
