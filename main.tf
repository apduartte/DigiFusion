module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  environment          = var.environment
  domain_name          = var.domain_name
  tags                 = var.tags
}

module "security" {
  source = "./modules/security"

  vpc_id = module.vpc.vpc_id
  tags   = var.tags
}

module "n8n_ec2" {
  source = "./modules/ec2"

  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnets[0]
  security_group_ids = [module.security.ec2_sg_id]

  key_name                  = var.key_name
  ssm_instance_profile_name = var.ssm_instance_profile_name
  tags                      = var.tags
}

module "acm" {
  source = "./modules/acm"

  domain_name = var.domain_name
  tags        = var.tags
}
