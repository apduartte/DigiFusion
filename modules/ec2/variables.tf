variable "ami_id" {
  description = "AMI da instância"
  type        = string
  default     = "ami-0e001c9271cf7b884" # Amazon Linux 2023 us-east-1
}

variable "instance_type" {
  description = "Tipo da instância"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Chave SSH (opcional)"
  type        = string
  default     = ""   # deixe vazio se não for usar SSH
}

variable "subnet_id" {
  description = "Subnet onde a EC2 será criada"
  type        = string
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Lista de Security Groups para a instância EC2"
}

variable "ssm_instance_profile_name" {
  description = "Instance profile para acesso via SSM"
  type        = string
  default     = ""   # se vazio, não será associado automaticamente
}

