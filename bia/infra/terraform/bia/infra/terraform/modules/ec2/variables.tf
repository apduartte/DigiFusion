variable "ami_id" {
  type        = string
  description = "AMI usada para a instância EC2"
}

variable "instance_type" {
  type        = string
  description = "Tipo da instância EC2"
}

variable "security_group_id" {
  type        = string
  description = "Security Group da instância EC2"
}

variable "subnet_id" {
  type        = string
  description = "Subnet onde a instância será criada"
}

variable "instance_profile" {
  type        = string
  description = "IAM Instance Profile para a EC2"
}

variable "db_host" {
  type        = string
  description = "Endpoint do banco RDS"
}

variable "db_password" {
  type        = string
  description = "Senha do banco RDS"
  sensitive   = true
}

variable "user_data" {
  type        = string
  description = "Script de inicialização da EC2"
}

variable "tags" {
  type        = map(string)
  description = "Tags aplicadas à instância EC2"
}
