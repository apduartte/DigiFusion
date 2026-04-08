
# 🚀 DigiFusion-N8N
Arquitetura evolutiva para automação de workflows com N8N na AWS

![AWS](https://img.shields.io/badge/AWS-Cloud-%23FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-IaC-%237B42BC?style=for-the-badge&logo=terraform)
![Docker](https://img.shields.io/badge/Docker-Container-%230db7ed?style=for-the-badge&logo=docker)

---

## 📌 Objetivo

O **DigiFusion-N8N** tem como objetivo demonstrar a construção de uma arquitetura moderna na AWS, evoluindo progressivamente de uma prova de conceito (POC) até um ambiente produtivo altamente escalável.

A solução aplica práticas consolidadas de:

- Cloud Computing  
- DevOps  
- Segurança  
- FinOps  
- SRE (Site Reliability Engineering)  

---

## 🧠 Modelo Arquitetural

A arquitetura segue um modelo evolutivo em três estágios:

| Nível | Descrição |
|------|----------|
| **POC** | Baixo custo, implementação rápida |
| **HA (Alta Disponibilidade)** | Redundância e estabilidade |
| **Produção Escalável** | Performance, resiliência e escalabilidade |

---

## 🏗️ Arquitetura em Camadas

### 🌐 1. Camada de Entrada (Edge)

Responsável pelo roteamento e proteção do tráfego externo:

- Route 53 (DNS)
- WAF (proteção contra ataques HTTP)
- Application Load Balancer (ALB)
- ACM (certificados HTTPS)

---

### ⚙️ 2. Camada de Aplicação

Responsável pelo processamento dos workflows:

- N8N (instância principal)
- Workers (processamento assíncrono via fila)
- Auto Scaling (ajuste dinâmico de capacidade)

---

### 🗄️ 3. Camada de Dados

Responsável pelo armazenamento persistente:

- RDS PostgreSQL (Multi-AZ)
- S3 (opcional para dados históricos e backups)

---

### 🔐 4. Camada de Acesso

Responsável pela administração segura da infraestrutura:

- AWS Systems Manager (SSM)
- Acesso remoto sem uso de SSH (porta 22 desabilitada)

---

### 🧾 5. Camada de Identidade (IAM)

Responsável pelo controle de permissões:

- Roles (associação a serviços)
- Policies (definição de permissões)
- Princípio do menor privilégio (Least Privilege)

---

### 📊 6. Camada de Observabilidade

Responsável pelo monitoramento e rastreabilidade:

- CloudWatch Logs
- Métricas (CPU, memória, latência)
- Alarmes e notificações

---

### 💰 7. Camada FinOps (Transversal)

Responsável pela governança de custos:

- Monitoramento de consumo
- Rightsizing de recursos
- Otimização contínua

---

## 🔄 Fluxo da Aplicação

```text
Usuário
  │
  ▼
Route 53 (DNS)
  │
  ▼
WAF
  │
  ▼
ALB (HTTPS via ACM)
  │
  ▼
N8N (Orquestrador)
  │
  ▼
Fila (Queue)
  │
  ▼
Workers
  │
  ▼
RDS PostgreSQL
```

---

## 🔐 Segurança (Defense in Depth)

A arquitetura implementa segurança em múltiplas camadas:

- Criptografia HTTPS com ACM  
- Proteção contra ataques com WAF  
- Controle de acesso com IAM  
- Acesso administrativo via SSM  
- SSH desabilitado (porta 22 fechada)  
- Criptografia de dados em trânsito (TLS)  

### 🔎 Resumo de Segurança

| Componente | Função |
|-----------|--------|
| ACM | Criptografia HTTPS |
| WAF | Proteção contra ataques |
| IAM | Controle de acesso |
| SSM | Acesso seguro às instâncias |

---

## ⚙️ DevOps

Práticas adotadas:

- Infraestrutura como código (Terraform)
- Pipeline de CI/CD
- Execução remota via SSM
- Automação de rotinas:
  - Deploy
  - Backup
  - Health Check

---

## 📈 SRE (Confiabilidade)

### SLIs (Indicadores)

- Latência  
- Taxa de erro  
- Disponibilidade  

### SLOs (Objetivos)

- Disponibilidade: **99.9%**
- Latência: **< 300ms**

### Estratégias

- Banco Multi-AZ  
- Load Balancer  
- Auto Scaling  
- Health Checks  
- Tolerância a falhas  

---

## 💰 FinOps (Gestão de Custos)

### Principais drivers de custo

- Execuções do N8N  
- Consumo de CPU (EC2)  
- Armazenamento (RDS)  
- Logs (CloudWatch)  

### Estratégias de otimização

- Separação de ambientes (dev, staging, prod)  
- Uso sob demanda  
- Rightsizing  
- Desligamento de ambientes não produtivos  

---

## 🧪 Engenharia de Dados

### Fluxo de dados

```text
Webhook → N8N → Fila → Worker → Banco
```

### Evolução planejada

- Armazenamento histórico em S3  
- Separação entre dados operacionais e analíticos  

---

## 🚀 Ambientes

| Ambiente | Arquitetura |
|---------|------------|
| Dev | POC |
| Staging | Alta Disponibilidade |
| Produção | Escalável |

---

## 🎯 Diferenciais

- Arquitetura evolutiva e escalável  
- Segurança sem exposição via SSH  
- Automação completa com Terraform  
- Governança de custos (FinOps)  
- Alta confiabilidade (SRE)  
- Separação clara de responsabilidades por camada  

---

## 🧭 Conclusão

O DigiFusion-N8N demonstra a implementação de uma arquitetura moderna na nuvem, com foco em:

- Eficiência operacional  
- Segurança  
- Escalabilidade  
- Controle de custos  
- Resiliência  

---

## 📌 Frase do Projeto

> "Do simples ao escalável: evolução guiada por automação, segurança e eficiência."
---

