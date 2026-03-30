provider "aws" {
  region = var.region
}

locals {
  tags = {
    Environment = "dev"
    Project     = "n8n"
    Owner       = "ana"
    CostCenter  = "lab"
  }
}

module "vpc" {
  source               = "../../modules/vpc"
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

#module "rds" {
#  source      = "../../modules/rds"
#  vpc_id      = module.vpc.vpc_id
#  subnet_ids  = module.vpc.private_subnets
#  db_password = var.db_password
#  tags        = local.tags
#}

#module "ecs" {
#  source      = "../../modules/ecs"
#  vpc_id      = module.vpc.vpc_id
#  subnet_ids  = module.vpc.private_subnets
#  db_host     = module.rds.db_host
#  db_password = var.db_password
#  tags        = local.tags
#}

#module "alb" {
#  source      = "../../modules/alb"
#  vpc_id      = module.vpc.vpc_id
#  subnet_ids  = module.vpc.public_subnets
#  target_arn  = module.ecs.target_group_arn
#  tags        = local.tags
#}
