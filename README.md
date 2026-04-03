# 🚀 DigiFusion | Arquitetura AWS Nível FAANG (Zero Trust + FinOps)

> **Arquitetura cloud de nível empresarial, focada em segurança, escalabilidade e otimização de custos.**

---

## 🧠 Visão Geral do Projeto

Este projeto demonstra uma arquitetura DevOps moderna utilizando AWS, com:

* 🔐 **Zero Trust (acesso via SSM, sem SSH)**
* 💰 **FinOps (sem NAT Gateway, custo otimizado)**
* ⚙️ **Infraestrutura como Código (Terraform modular)**
* 🔄 **CI/CD com GitHub Actions**

---

## 🏗️ Diagrama de Arquitetura (High Level)

```text
                ┌───────────────┐
                │     USER      │
                └──────┬────────┘
                       │
                ┌──────▼────────┐
                │      ALB      │  (Público)
                └──────┬────────┘
                       │
                ┌──────▼────────┐
                │      EC2      │  (Privado)
                └──────┬────────┘
                       │
              ┌────────▼─────────┐
              │  SSM Session     │
              └────────┬─────────┘
                       │
      ┌────────────────▼────────────────┐
      │ VPC Endpoints (SSM, EC2Messages)│
      └─────────────────────────────────┘
```

---

## 📊 Métricas (Estimativas Realistas)

### ⚡ Latência

| Componente  | Latência média |
| ----------- | -------------- |
| ALB → EC2   | ~10–30ms       |
| SSM Session | ~100–300ms     |

### 🚀 Throughput

* EC2 t3.micro: ~500–1000 req/s (dependendo da app)
* Escalável horizontalmente com ALB

### 💰 Custo Estimado (mensal)

| Recurso            | Custo           |
| ------------------ | --------------- |
| EC2 t3.micro       | ~$8–12          |
| ALB                | ~$16            |
| VPC Endpoint       | ~$7–10          |
| Route53            | ~$1             |
| **Total estimado** | **~$30–40/mês** |

> 💡 Economia: ~40% vs arquitetura com NAT Gateway

---

## 🔐 Segurança (Zero Trust)

* ❌ Sem SSH (porta 22 bloqueada)
* ✅ Acesso via AWS SSM
* ✅ EC2 em subnet privada
* ✅ Security Group restrito (ALB → EC2)
* ✅ Comunicação interna via VPC Endpoints

---

## 💰 Estratégia FinOps

* Eliminação de NAT Gateway
* Uso de VPC Endpoints
* Dimensionamento correto de instância
* Preparado para auto scaling futuro

---

## ⚙️ Stack Tecnológica

* AWS (EC2, ALB, VPC, SSM, Route53)
* Terraform (modular)
* GitHub Actions
* Docker (opcional)

---

## 📦 Estrutura Modular Terraform

```bash
modules/
  network/
  alb/
  ec2/
  iam/
  dns/
```

---

## 🧪 Testes e Validação (SRE Style)

### ✔️ Infraestrutura

```bash
terraform validate
terraform plan
```

### ✔️ Conectividade

* Teste acesso via SSM
* Verificar health check do ALB

### ✔️ Segurança

* Validar ausência de porta 22
* Validar EC2 sem IP público

### ✔️ Performance

```bash
ab -n 1000 -c 50 http://seu-alb
```

---

## 🔄 CI/CD Pipeline

```yaml
Terraform Init
Terraform Validate
Terraform Plan
```

---

## 📈 Evolução da Arquitetura

| Versão | Arquitetura       |
| ------ | ----------------- |
| v1     | EC2 simples       |
| v2     | ALB + EC2         |
| v3     | EC2 privada + SSM |
| v4     | Worker + fila     |
| v5     | ECS / Kubernetes  |

---

## 🎯 Como Explicar em Entrevista (Pitch Técnico)

> “Implementei uma arquitetura AWS baseada em princípios de Zero Trust, eliminando completamente o uso de SSH e utilizando SSM para acesso seguro. A infraestrutura foi provisionada com Terraform modular, garantindo escalabilidade e reaproveitamento. Também apliquei práticas de FinOps, reduzindo custos ao remover o NAT Gateway e substituí-lo por VPC Endpoints. O sistema está preparado para evolução para containers e orquestração com Kubernetes.”

---

## 📣 Post para LinkedIn

```text
🚀 Construí uma arquitetura AWS nível FAANG com foco em segurança e custo!

🔐 Zero Trust (sem SSH, apenas SSM)
💰 FinOps (sem NAT Gateway)
⚙️ Infra como Código (Terraform)

Preparada para escalar para Kubernetes.

#AWS #DevOps #Terraform #Cloud #FinOps #SSM
```

---

## 👩‍💻 Autora

**Ana Paula Duarte**
Cloud | DevOps | AWS

---

## ⭐ Destaque

Projeto desenvolvido com foco em padrões utilizados por empresas como Big Techs, priorizando:

* Segurança
* Escalabilidade
* Eficiência de custo
* Automação completa
