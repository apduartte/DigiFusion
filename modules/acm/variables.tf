variable "domain_name" {
  description = "Domínio principal para o certificado ACM"
  type        = string
}

variable "tags" {
  description = "Tags aplicadas ao recurso ACM"
  type        = map(string)
  default     = {}
}

