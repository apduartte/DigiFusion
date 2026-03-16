## 🏗️ AWS Architecture

![AWS Architecture n8n][def]

User → CloudFront → Route53 → ACM (HTTPS)
        ↓
       ALB
        ↓
       EC2 (Docker n8n)
        ↓
       RDS PostgreSQL

[def]: docs/images/arquitetura-aws.png