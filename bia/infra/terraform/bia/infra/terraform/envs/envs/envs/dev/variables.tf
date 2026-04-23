variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "vpc_cidr" {
  description = "CIDR block da VPC"
  type        = string
}

variable "tags" {
  description = "Tags padrão para os recursos"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Nome do ambiente (ex: dev, prod)"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDRs para subnets públicas"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Lista de CIDRs para subnets privadas"
  type        = list(string)
}

