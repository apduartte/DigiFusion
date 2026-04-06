variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Nome do ambiente"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR da VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDRs para subnets públicas"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Lista de CIDRs para subnets privadas"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "ami" {
  description = "AMI ID para instâncias EC2"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}

variable "tags" {
  description = "Tags padrão"
  type        = map(string)
  default = {
    Owner       = "Ana"
    Environment = "dev"
    Project     = "infra"
  }
}
