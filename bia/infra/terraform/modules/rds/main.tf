variable "db_password" {}
variable "sg_id" {}

resource "aws_db_instance" "this" {
  identifier        = "n8n-db"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  db_name  = "n8n"
  username = "postgres"
  password = var.db_password

  vpc_security_group_ids = [var.sg_id]

  skip_final_snapshot = true
}

output "db_host" {
  value = aws_db_instance.this.address
}