```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>DigiFusion-N8N | Arquitetura AWS</title>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', Arial, sans-serif;
    background: #020617;
    color: #e2e8f0;
}

header {
    text-align: center;
    padding: 60px 20px;
    background: linear-gradient(90deg, #020617, #0f172a);
}

h1 {
    color: #38bdf8;
    font-size: 2.2rem;
    margin-bottom: 10px;
}

.subtitle {
    color: #94a3b8;
    font-size: 1rem;
}

.container {
    max-width: 800px;
    margin: auto;
    padding: 20px;
}

.section-title {
    color: #22c55e;
    margin-top: 30px;
    margin-bottom: 10px;
    font-size: 1.2rem;
}

.card {
    background: #0f172a;
    border: 1px solid #1e293b;
    padding: 20px;
    border-radius: 12px;
    margin-bottom: 15px;
}

ul {
    padding-left: 20px;
}

pre {
    background: #020617;
    padding: 15px;
    border-radius: 8px;
    color: #38bdf8;
    overflow-x: auto;
}

.highlight {
    background: #7c2d12;
    padding: 12px;
    border-radius: 8px;
    margin-top: 15px;
    font-size: 0.9rem;
    text-align: center;
}

footer {
    text-align: center;
    padding: 20px;
    color: #64748b;
    font-size: 0.8rem;
}
</style>
</head>

<body>

<header>
    <h1>🚀 DigiFusion-N8N</h1>
    <p class="subtitle">Projeto Educacional — Arquitetura Cloud com AWS</p>
</header>

<div class="container">

    <div class="section-title">📌 Contexto do Projeto</div>
    <div class="card">
        <p>Este projeto foi desenvolvido como desafio técnico no curso de formação AWS.</p>
        <p>O objetivo é aplicar conceitos de arquitetura cloud, automação e boas práticas de engenharia em um ambiente controlado de aprendizado.</p>
    </div>

    <div class="section-title">🏗️ Arquitetura Proposta</div>
    <div class="card">
        <ul>
            <li>Camada de entrada: DNS, WAF, Load Balancer</li>
            <li>Camada de aplicação: N8N + Workers</li>
            <li>Camada de dados: PostgreSQL (RDS)</li>
            <li>Armazenamento: S3 (backup e histórico)</li>
        </ul>
    </div>

    <div class="section-title">🧠 Conceitos Aplicados</div>
    <div class="card">
        <ul>
            <li>Infraestrutura como Código (Terraform)</li>
            <li>Princípios de alta disponibilidade</li>
            <li>Segurança em múltiplas camadas</li>
            <li>Observabilidade e monitoramento</li>
            <li>Boas práticas de DevOps e SRE</li>
        </ul>
    </div>

    <div class="section-title">🔄 Fluxo da Aplicação</div>
    <div class="card">
        <pre>Usuário → Route53 → WAF → ALB → N8N → Fila → Workers → RDS</pre>
    </div>

    <div class="highlight">
        ⚠️ Este projeto possui caráter exclusivamente educacional, não representando ambiente produtivo real sem validação profissional.
    </div>

</div>

<footer>
    © 2026 • Projeto Educacional AWS - Curso de Formação AWS 5.0 - Prof. Henrylle Maia
</footer>

<<<<<<< HEAD
</body>
</html>
```
=======
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

>>>>>>> 620a774 (Atualiza DigiFusion.md com layout FAANG completo)
