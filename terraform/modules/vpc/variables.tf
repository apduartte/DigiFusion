variable "environment" {
  type        = string
  description = "Environment name (dev/staging/prod)"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "tags" {
  type    = map(string)
  default = {}
}
variable "domain_name" {
  description = "Nome de domínio para o certificado ACM"
  type        = string
}

