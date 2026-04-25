variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "private_subnet_ids" {
  description = "IDs das subnets privadas"
  type        = list(string)
}

variable "security_group_id" {
  description = "ID do Security Group para RDS"
  type        = string
}

variable "environment" {
  description = "Nome do ambiente"
  type        = string
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "Username do banco de dados"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password do banco de dados"
  type        = string
  sensitive   = true
  default     = "changeme123!"
}

variable "tags" {
  description = "Tags padrão"
  type        = map(string)
  default     = {}
}
