resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile   = var.instance_profile
  user_data              = var.user_data

  tags = var.tags
}

output "instance_id" {
  value       = aws_instance.this.id
  description = "ID da instância EC2"
}

output "private_ip" {
  value       = aws_instance.this.private_ip
  description = "IP privado da instância EC2"
}

