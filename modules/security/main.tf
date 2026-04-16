resource "aws_security_group" "alb_sg" {
  name        = "alb-sg-${var.environment}"
  description = "Security Group for ALB - allows HTTP traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow HTTP (port 80) from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, {
    Name        = "alb-sg-${var.environment}"
    Environment = var.environment
  })
}

