resource "aws_instance" "n8n" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.security.ec2_sg_id]

  key_name = var.key_name

  # ----------------------------
  # USER DATA
  # ----------------------------
  user_data = templatefile("${path.module}/user_data.sh", {
    n8n_password = var.n8n_password
  })

  user_data_replace_on_change = true

  # ----------------------------
  # IAM INSTANCE PROFILE
  # (precisa existir via IAM module ou variável)
  # ----------------------------
  iam_instance_profile = var.ssm_instance_profile_name

  # ----------------------------
  # ROOT DISK CONFIG
  # ----------------------------
  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    encrypted             = true
    delete_on_termination = true
  }

  # ----------------------------
  # TAGS PADRÃO (ENXUTA E CORRETA)
  # ----------------------------
  tags = merge(
    var.tags,
    {
      Name        = "n8n-instance"
      Environment = var.environment
      ManagedBy   = "terraform"
      Service     = "n8n"
    }
  )

  # ----------------------------
  # LIFECYCLE CONTROLADO
  # ----------------------------
  lifecycle {
    ignore_changes = [
      ami
    ]
  }
}

# ----------------------------
# VPC MODULE
# ----------------------------
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
  tags     = var.tags
}

# ----------------------------
# SECURITY MODULE
# ----------------------------
module "security" {
  source = "./modules/security"

  vpc_id = module.vpc.vpc_id
  tags   = var.tags
}
