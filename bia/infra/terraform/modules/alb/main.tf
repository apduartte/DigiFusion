
variable "vpc_id" {}
variable "subnet_id" {}
variable "target_id" {}

resource "aws_lb" "this" {
  name               = "n8n-alb"
  load_balancer_type = "application"
  subnets            = [var.subnet_id]
}

resource "aws_lb_target_group" "this" {
  port     = 5678
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "this" {
  target_group_arn = aws_lb_target_group.this.arn
  target_id        = var.target_id
  port             = 5678
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = 80

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}

output "alb_dns" {
  value = aws_lb.this.dns_name
}
