variable "region" {
  default = "us-east-1"
}

variable "db_password" {
  sensitive = true
}

variable "tags" {
  type        = map(string)
  default     = {}
}

variable "public_subnet_cidrs" {
  type        = list(string)
}

variable "private_subnet_cidrs" {
  type        = list(string)
}

