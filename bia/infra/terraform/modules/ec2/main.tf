resource "aws_instance" "n8n" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.subnet_id

  vpc_security_group_ids = var.vpc_security_group_ids

  key_name = var.key_name

  user_data = file("${path.module}/user_data.sh")

  iam_instance_profile = var.ssm_instance_profile_name != "" ? var.ssm_instance_profile_name : null

  tags = merge(
    var.tags,
    {
      Name = "n8n-instance"
    }
  )
}

