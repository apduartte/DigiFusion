# =================================================
# Módulo VPC
# =================================================
module "vpc" {
  source = "./modules/vpc"

  region               = var.region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

# =================================================
# Módulo Security
# =================================================
module "security" {
  source = "./modules/security"

  vpc_id = module.vpc.vpc_id
}

# =================================================
# Módulo N8N EC2
# =================================================
module "n8n_ec2" {
  source = "./modules/ec2"

  vpc_id                   = module.vpc.vpc_id
  subnet_id                = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.security.ec2_sg_id]

  ami_id                   = "ami-0e001c9271cf7b884"
  instance_type            = "t3.micro"
  key_name                 = "" 
  ssm_instance_profile_name = "role-acesso-ssm-digifusion"  # <--- coloque o nome do instance profile aqui
}

