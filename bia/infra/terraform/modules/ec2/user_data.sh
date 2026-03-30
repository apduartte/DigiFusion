#!/bin/bash
yum update -y

# Instalar Docker
yum install -y docker
systemctl start docker
systemctl enable docker

# Rodar N8N via Docker
docker run -d \
  -p 5678:5678 \
  -e DB_TYPE=postgresdb \
  -e DB_POSTGRESDB_HOST=${db_host} \
  -e DB_POSTGRESDB_DATABASE=n8n \
  -e DB_POSTGRESDB_USER=postgres \
  -e DB_POSTGRESDB_PASSWORD=${db_password} \
  n8nio/n8n