variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags padrão aplicadas a todos os recursos"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Lista de CIDRs para subnets públicas"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Lista de CIDRs para subnets privadas"
}

