#!/bin/bash

# Update the package database
apt-get update

# Install Docker
apt-get install -y docker.io

# Start Docker service
systemctl start docker

# Enable Docker service to start on boot
systemctl enable docker

# Pull the latest WordPress image
docker pull wordpress

# Run a WordPress container
docker run -d \
  --name wordpress \
  -p 80:80 \
  --restart unless-stopped \
  -e WORDPRESS_DB_HOST=localhost \
  -e WORDPRESS_DB_USER=wordpress \
  -e WORDPRESS_DB_PASSWORD=wordpress \
  -e WORDPRESS_DB_NAME=wordpress \
  wordpress
