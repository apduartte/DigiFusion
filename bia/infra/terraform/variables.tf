variable "aws_region" {
  type        = string
  description = "Região AWS"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Ambiente (dev, prod)"
}