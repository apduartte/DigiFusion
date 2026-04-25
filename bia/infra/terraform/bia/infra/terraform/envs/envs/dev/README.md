# Infraestrutura AWS - Ambiente Dev

## Objetivo
Criar rede básica para ambiente de desenvolvimento usando Terraform.

## Recursos Criados
- VPC: 10.0.0.0/16 (dev-vpc)
- Subnets públicas: 10.0.1.0/24, 10.0.2.0/24
- Subnets privadas: 10.0.11.0/24, 10.0.12.0/24
- Internet Gateway: dev-igw
- Região: us-east-1 (Norte da Virgínia)
- Tags: Environment=dev, Owner=Ana

## Comandos principais
```bash
terraform init
terraform validate
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"