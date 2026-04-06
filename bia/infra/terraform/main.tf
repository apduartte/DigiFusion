
module "vpc" {
  source = "./modules/vpc"

  region               = var.region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

module "security" {
  source = "./modules/security"

  vpc_id = module.vpc.vpc_id
}

# Comentar RDS e EC2 por enquanto
# module "rds" {
#   source = "./modules/rds"
#   
#   vpc_id             = module.vpc.vpc_id
#   private_subnet_ids = module.vpc.private_subnets
#   security_group_id  = module.security.rds_sg_id
#   environment        = var.environment
#   tags               = var.tags
# }

# module "ec2" {
#   source = "./modules/ec2"
#   
#   subnet_id         = module.vpc.public_subnets[0]
#   security_group_id = module.security.ec2_sg_id
#   ami_id            = var.ami
#   instance_type     = "t3.micro"
#   user_data         = ""
#   instance_profile  = ""
#   db_host           = ""
#   db_password       = "changeme123!"
#   tags              = var.tags
# }
