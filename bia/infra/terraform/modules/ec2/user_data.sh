
#!/bin/bash

yum update -y
amazon-linux-extras install docker -y
service docker start
usermod -aG docker ec2-user

cat <<EOF > docker-compose.yml
version: "3.8"

services:
  redis:
    image: redis:7

  n8n-main:
    image: n8nio/n8n
    ports:
      - "5678:5678"
    environment:
      - EXECUTIONS_MODE=queue
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_HOST=${db_host}
      - DB_POSTGRESDB_PASSWORD=${db_password}
      - QUEUE_BULL_REDIS_HOST=redis

  n8n-worker:
    image: n8nio/n8n
    command: worker
    environment:
      - EXECUTIONS_MODE=queue
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_HOST=${db_host}
      - DB_POSTGRESDB_PASSWORD=${db_password}
      - QUEUE_BULL_REDIS_HOST=redis

EOF

docker compose up -d