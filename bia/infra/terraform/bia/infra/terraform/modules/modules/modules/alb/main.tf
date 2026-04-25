resource "aws_lb" "this" {
  name               = "my-alb"
  load_balancer_type = "application"
  subnets            = var.public_subnets
  security_groups    = [var.security_group_id]
}
output "dns_name" {
  value       = aws_lb.this.dns_name
  description = "DNS público do ALB"
}

