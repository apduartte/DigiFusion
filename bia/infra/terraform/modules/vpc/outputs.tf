# Outputs
output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.this.id
}

output "public_subnets" {
  description = "Lista de subnets públicas"
  value       = values(aws_subnet.public)[*].id
}

output "private_subnets" {
  description = "Lista de subnets privadas"
  value       = values(aws_subnet.private)[*].id
}

