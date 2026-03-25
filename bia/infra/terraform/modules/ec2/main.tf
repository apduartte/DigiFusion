variable "subnet_id" {}
variable "sg_id" {}
variable "db_host" {}
variable "db_password" {}

resource "aws_iam_role" "this" {
  name = "ec2-ssm-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ssm" {
  role       = aws_iam_role.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "this" {
  role = aws_iam_role.this.name
}

resource "aws_instance" "this" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  subnet_id = var.subnet_id

  vpc_security_group_ids = [var.sg_id]

  iam_instance_profile = aws_iam_instance_profile.this.name

  user_data = templatefile("${path.module}/user_data.sh", {
    db_host     = var.db_host
    db_password = var.db_password
  })
}

output "instance_id" {
  value = aws_instance.this.id
}