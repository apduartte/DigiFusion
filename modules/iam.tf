resource "aws_iam_role" "ec2_ssm_role" {
  name = "role-acesso-ssm-digifusion"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ssm_attach" {
  role       = aws_iam_role.ec2_ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ec2_ssm_profile" {
  name = "role-acesso-ssm-digifusion"
  role = aws_iam_role.ec2_ssm_role.name
}

am_instance_profile = aws_iam_instance_profile.ec2_ssm_profile.name
