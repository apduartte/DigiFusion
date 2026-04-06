<div style="background-color:#0a0a23; color:white; padding:20px; border-radius:10px; text-align:center;">
<h1 style="color:#ff6600;">DigiFusion – CI/CD & Terraform</h1>
<p style="font-size:18px;">Projeto de portfólio profissional, estilo FAANG</p>
</div>

---

## 🌟 Status do Projeto

![CI](https://img.shields.io/github/workflow/status/apduartte/DigiFusion/CI)
![CD](https://img.shields.io/github/workflow/status/apduartte/DigiFusion/CD)
![Lint](https://img.shields.io/github/workflow/status/apduartte/DigiFusion/Lint)
![Security](https://img.shields.io/github/workflow/status/apduartte/DigiFusion/Security)
![Terraform fmt](https://img.shields.io/github/workflow/status/apduartte/DigiFusion/Terraform%20Fmt)
![Terraform validate](https://img.shields.io/github/workflow/status/apduartte/DigiFusion/Terraform%20Validate)

---

## 🌐 Visão Geral

DigiFusion combina **Terraform**, **AWS** e **GitHub Actions** para criar pipelines CI/CD seguros, escaláveis e fáceis de auditar.  
O projeto demonstra **controle de ambientes, automação e boas práticas de engenharia**, seguindo padrões FAANG.

---

## 🏗️ Arquitetura do Pipeline

```mermaid
flowchart LR
  A[Pull Request] -->|CI Terraform| B[Validate & Plan]
  B --> C[Review & Merge]
  C -->|Push main| D[CD DEV]
  D --> E[AWS OIDC Auth]
  E --> F[Terraform Apply -> AWS Infrastructure]

  subgraph Infraestrutura AWS
    F --> G[VPC]
    F --> H[Subnets]
    F --> I[Security Groups]
    F --> J[RDS]
    F --> K[S3 Buckets]
  end

  F --> L[Outputs & Terraform State]

