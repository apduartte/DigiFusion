variable "ami_id" {
  type        = string
  description = "AMI ID para a instancia EC2 (deve ser válida na região do provider)"
}

variable "instance_type" {
  type        = string
  description = "Tipo da instancia EC2"
  default     = "t3.medium"
}

variable "subnet_id" {
  type        = string
  description = "Subnet onde a EC2 sera criada"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Lista de Security Groups associados à EC2"
}

variable "key_name" {
  type        = string
  description = "Nome da chave SSH"
  default     = null

  validation {
    condition     = var.key_name != null || var.ssm_instance_profile_name != null
    error_message = "Informe key_name ou ssm_instance_profile_name para acesso à instância."
  }
}

variable "ssm_instance_profile_name" {
  type        = string
  description = "IAM Instance Profile para acesso via SSM"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Tags aplicadas à instancia EC2"
  default = {
    ManagedBy = "Terraform"
  }
}