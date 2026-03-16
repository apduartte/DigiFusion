provider "aws" {
  region = "us-east-1"
}

resource "aws_acm_certificate" "cert" {
  domain_name       = "n8n.seudominio.com"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}