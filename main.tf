provider "aws" {
  region = var.region
}

# -----------------------------
# VPC MODULE
# -----------------------------
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

  tags = var.tags
}

# -----------------------------
# SECURITY GROUP MODULE
# -----------------------------
module "security" {
  source = "./modules/security"

  vpc_id      = var.vpc_id
  environment = var.environment
  tags        = var.tags
}


# -----------------------------
# EC2 (N8N)
# -----------------------------
resource "aws_instance" "n8n_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.security.ec2_sg_id]

  key_name = var.key_name
  user_data = templatefile("${path.module}/user_data.sh", {
    n8n_password = var.n8n_password != "" ? var.n8n_password : "fallback123"
  })

  iam_instance_profile = var.ssm_instance_profile_name

  tags = merge(
    var.tags,
    {
      Name = "n8n-instance"
    }
  )
}
