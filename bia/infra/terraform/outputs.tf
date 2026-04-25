# VPC
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID da VPC"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Subnets públicas"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "Subnets privadas"
}

# Security
output "ec2_sg_id" {
  value       = module.security.ec2_sg_id
  description = "ID do Security Group para EC2"
}

# EC2
output "n8n_public_dns" {
  value       = module.n8n_ec2.public_dns
  description = "DNS público da instância N8N"
}

output "n8n_public_ip" {
  value       = module.n8n_ec2.public_ip
  description = "IP público da instância N8N"
}

# ACM
output "certificate_arn" {
  value       = module.acm.certificate_arn
  description = "ARN do certificado ACM em us-east-1"
}

# CloudFront
#output "cloudfront_distribution_id" {
#  value       = module.cloudfront.distribution_id
#  description = "ID da distribuição CloudFront"
#}
#
#output "cloudfront_domain_name" {
#  value       = module.cloudfront.domain_name
#  description = "Domain name da distribuição CloudFront"
#}
