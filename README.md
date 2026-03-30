# DigiFusion - Projeto de Infraestrutura e Aplicação

## Visão Geral
O projeto **DigiFusion** consiste em uma aplicação com infraestrutura provisionada na AWS, usando **Terraform** para gerenciar recursos e garantindo boas práticas de FinOps e rastreabilidade de custos.

Este README funciona como guia-mestre, com visão geral do projeto, estrutura de pastas e passo a passo para rodar o ambiente de desenvolvimento.

---

## Estrutura do Projeto
DigiFusion/
│
├─ bia/infra/terraform/ # Código Terraform
│ ├─ envs/
│ │ ├─ dev/ # Ambiente de desenvolvimento
│ │ │ └─ README.md # Documentação específica do dev
│ │ └─ prod/ # Ambiente de produção
│ └─ modules/ # Módulos reutilizáveis
│
├─ bia/app/ # Código da aplicação
│ └─ README.md # Documentação do app
│
└─ docs/ # Documentação complementar

---

## Passo a Passo - Infraestrutura

1. Navegue até a pasta do ambiente dev:

```bash
cd bia/infra/terraform/envs/dev

2. Inicialize o Terraform:
terraform init

3.Valide a configuração:
terraform validate

4.Planeje a criação da infraestrutura:
terraform plan -var-file="terraform.tfvars"

5.Aplique o plano para criar os recursos:
terraform apply -var-file="terraform.tfvars"

Para mais detalhes da infraestrutura, consulte o README específico:
bia/infra/terraform/envs/dev/README.md

Considerações de FinOps
Bucket S3 com lifecycle configurado (limpeza automática de objetos antigos)
DynamoDB para lock do Terraform (custo quase zero)
PostgreSQL em ambiente dev pode usar EC2 t3.micro ou local para minimizar custos
Tags aplicadas a todos os recursos para rastreabilidade (Environment, Owner)

Referências
Terraform AWS Provider
Documentação AWS S3 Lifecycle
Boas práticas FinOps