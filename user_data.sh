#!/bin/bash
set -e

# Log para debug
exec > /var/log/user-data.log 2>&1

echo "Iniciando configuração da instância..."

# Atualizar sistema
yum update -y

# Instalar Docker (compatível com Amazon Linux 2)
yum install -y docker

# Iniciar e habilitar Docker
systemctl start docker
systemctl enable docker

# Permitir ec2-user usar docker
usermod -aG docker ec2-user

# Pequena pausa para garantir que o Docker está pronto
sleep 10

# Rodar n8n
docker run -d \
  --name n8n \
  --restart always \
  -p 5678:5678 \
  -e N8N_BASIC_AUTH_ACTIVE=true \
  -e N8N_BASIC_AUTH_USER=admin \
  -e N8N_BASIC_AUTH_PASSWORD="senhaSegura123" \
  -e N8N_HOST=0.0.0.0 \
  -e N8N_PORT=5678 \
  n8nio/n8n

echo "n8n iniciado com sucesso!"
