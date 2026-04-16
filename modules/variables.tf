variable "vpc_id" {
  description = "ID da VPC onde a instância será criada"
  type        = string
}

variable "public_subnet_id" {
  description = "ID da subnet pública"
  type        = string
}

variable "ssm_instance_profile_name" {
  description = "IAM Instance Profile para acesso via SSM"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instância EC2"
  type        = string
  default     = "t3.medium"
}

variable "ami_id" {
  description = "AMI da instância EC2"
  type        = string
  default     = "ami-02dfbd4ff395f2a1b"
}
