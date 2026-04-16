variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Ambiente do projeto (dev, staging, prod)"
  type        = string
  default     = "dev"
}

