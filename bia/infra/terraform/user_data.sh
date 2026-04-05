#!/bin/bash
yum update -y
amazon-linux-extras enable docker
yum install -y docker
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

docker run -d \
  --name n8n \
  -p 5678:5678 \
  -e N8N_BASIC_AUTH_ACTIVE=true \
  -e N8N_BASIC_AUTH_USER=admin \
  -e N8N_BASIC_AUTH_PASSWORD=senhaSegura123 \
  n8nio/n8n

