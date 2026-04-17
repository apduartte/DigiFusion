output "n8n_public_ip" {
  description = "Public IP of the n8n EC2 instance"
  value       = aws_instance.n8n_instance.public_ip
}

