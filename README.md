# 🚀 POC – n8n na AWS com Terraform

![Terraform](https://img.shields.io/badge/Terraform-1.5+-623CE4?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazonaws)
![Docker](https://img.shields.io/badge/Docker-Container-2496ED?logo=docker)
![Architecture](https://img.shields.io/badge/Architecture-2--Tier-blue)
![Status](https://img.shields.io/badge/Status-Conclu%C3%ADdo-success)

---

Arquitetura 2-Tier | Infraestrutura como Código | Segurança Básica em Cloud

---

# 1️⃣ Contexto

Esta Prova de Conceito (POC) foi desenvolvida como parte da **Formação AWS – Ciclo 3**, com foco na aplicação prática de conceitos fundamentais de Arquitetura em Nuvem e Infraestrutura como Código.

O projeto visa consolidar conhecimentos em:

* Infraestrutura como Código (IaC) com Terraform
* Arquitetura em Camadas (2-Tier)
* Segurança básica em ambientes AWS
* Provisionamento automatizado
* Containerização com Docker

A POC simula um cenário real de implantação de aplicação web segura em ambiente cloud.

---

# 2️⃣ Objetivo

Implementar uma arquitetura segura e organizada para execução do **n8n** na AWS, utilizando Terraform para provisionamento completo da infraestrutura.

### Objetivos Específicos

* Provisionar infraestrutura AWS de forma automatizada
* Implementar arquitetura 2-Tier (ALB + EC2 privada)
* Garantir isolamento da instância de aplicação
* Aplicar boas práticas iniciais de segurança
* Permitir acesso administrativo seguro via SSM

---

# 3️⃣ Restrições

Durante o desenvolvimento da POC, foram adotadas as seguintes restrições técnicas e arquiteturais:

### 🔐 Segurança

* EC2 sem IP público
* Porta 22 (SSH) não exposta
* Acesso administrativo exclusivamente via AWS Systems Manager (SSM)
* Security Group da EC2 aceita tráfego apenas do Load Balancer

### 🌐 Rede

* Arquitetura 2-Tier obrigatória
* Separação entre subnet pública e privada
* Subnet privada inicialmente sem NAT Gateway (limitação conhecida)

### ⚙️ Operacionais

* Provisionamento 100% via Terraform
* Uso de Amazon Linux 2
* Deploy da aplicação via Docker

---

# 4️⃣ Critérios de Qualidade

A POC foi considerada bem-sucedida quando atendeu aos seguintes critérios:

### 🏗️ Arquitetura

* Separação clara entre camada pública e privada
* Implementação correta do fluxo: Internet → ALB → EC2
* Organização modular dos recursos Terraform

### 🔐 Segurança

* Redução da superfície de ataque
* Instância protegida em subnet privada
* Acesso administrativo seguro sem SSH

### ⚙️ Engenharia

* Infraestrutura reprodutível via `terraform init / plan / apply`
* Código organizado por responsabilidade (network, security, ec2, alb)
* IAM Role corretamente configurada para SSM

### 📈 Boas Práticas

* Uso de Application Load Balancer
* Health Check configurado
* Base pronta para futura escalabilidade

---

# 5️⃣ Entregáveis

Os seguintes artefatos compõem o entregável da POC:

## 📂 Código Terraform

* main.tf
* variables.tf
* terraform.tfvars
* network.tf
* security.tf
* ec2.tf
* alb.tf
* outputs.tf

## ☁️ Infraestrutura Provisionada

* VPC customizada
* Subnet pública e privada
* Internet Gateway
* Application Load Balancer
* Target Group
* EC2 privada executando n8n via Docker
* IAM Role com acesso ao SSM
* Security Groups configurados

## 🚀 Resultado Esperado

Aplicação n8n acessível via Load Balancer (porta 80), com instância protegida em subnet privada e sem exposição direta à internet.

---

# 📊 Arquitetura Implementada

Internet
↓
ALB (HTTP 80)
↓
Target Group
↓
EC2 Privada (porta 5678)
↓
Docker
↓
n8n

---

# 🔄 Próximas Evoluções

* Implementação de NAT Gateway
* Migração para HTTPS com ACM
* Implementação de Auto Scaling Group
* Modularização completa do Terraform
* Monitoramento com CloudWatch

---

# 🎓 Conclusão

Esta POC demonstra aplicação prática de:

✔ Infraestrutura como Código
✔ Arquitetura em Camadas
✔ Segurança básica em Cloud
✔ Provisionamento automatizado
✔ Estrutura preparada para evolução arquitetural

---

👩‍💻 **Autora:** Ana Paula
Formação AWS – Ciclo 3

---

