variable "vpc_id" {
  description = "ID da VPC onde os SGs serão criados"
  type        = string
}

variable "environment" {
  description = "Ambiente (dev/staging/prod)"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Tags aplicadas aos recursos do módulo security"
  type        = map(string)
  default     = {}
}

