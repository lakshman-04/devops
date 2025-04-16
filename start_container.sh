#!/bin/bash
set -e

# Authenticate the Docker client to your ECR
aws ecr get-login-password --region "us-east-1" | docker login --username AWS --password-stdin 412381782395.dkr.ecr.us-east-1.amazonaws.com

# Pull the Docker image from Docker Hub
echo "starting container"

# Pull the image
docker pull 412381782395.dkr.ecr.us-east-1.amazonaws.com/aws-devops:latest

# Run the new image
docker run -d --name aws-du -p 8000:8000 412381782395.dkr.ecr.us-east-1.amazonaws.com/aws-devops:latest
