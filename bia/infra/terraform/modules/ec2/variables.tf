variable "ami_id" {}
variable "instance_type" {}

variable "subnet_id" {}
variable "vpc_security_group_ids" {}

variable "key_name" {
  default = null
}

variable "ssm_instance_profile_name" {
  default = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}
