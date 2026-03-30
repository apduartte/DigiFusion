variable "subnet_id" {}
variable "security_group_id" {}
variable "instance_profile" {}
variable "db_host" {}
variable "db_password" {}
variable "tags" {
  type = map(string)
}