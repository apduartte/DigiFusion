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

output "ec2_sg_id" {
  value       = module.security.ec2_sg_id
  description = "ID do Security Group para EC2"
}

output "n8n_public_dns" {
  value       = aws_instance.n8n.public_dns
  description = "DNS público da instância N8N"
}

