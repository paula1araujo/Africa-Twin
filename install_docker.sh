#!/bin/bash
apt-get update
apt-get install -y docker.io
systemctl start docker
systemctl enable docker
docker run -d -p 80:80 --name wordpress --restart unless-stopped -e WORDPRESS_DB_HOST=localhost -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=wordpress -e WORDPRESS_DB_NAME=wordpress wordpress
