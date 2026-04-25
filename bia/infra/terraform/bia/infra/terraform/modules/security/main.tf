variable "vpc_id" {
  description = "ID da VPC onde os SGs serão criados"
  type        = string
}

# SG para o ALB
resource "aws_security_group" "alb_sg" {
  name        = "alb-sg"
  description = "Security Group para o ALB"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# SG para a instância EC2
resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Security Group para EC2 rodando n8n"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 5678
    to_port         = 5678
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id] # só aceita tráfego vindo do ALB
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# SG para o RDS
resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "Security Group para RDS PostgreSQL"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.ec2_sg.id] # só aceita tráfego vindo da EC2
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Outputs
output "alb_sg_id" {
  value       = aws_security_group.alb_sg.id
  description = "ID do SG do ALB"
}

output "ec2_sg_id" {
  value       = aws_security_group.ec2_sg.id
  description = "ID do SG da EC2"
}

output "rds_sg_id" {
  value       = aws_security_group.rds_sg.id
  description = "ID do SG do RDS"
}


