module "network" {
  source = "./modules/network"

  env = var.env
}

module "iam" {
  source = "./modules/iam"

  env = var.env
}

module "ec2" {
  source = "./modules/ec2"

  env        = var.env
  subnet_id  = module.network.public_subnet_id
  vpc_id     = module.network.vpc_id
}

module "alb" {
  source = "./modules/alb"

  env     = var.env
  vpc_id  = module.network.vpc_id
  subnets = module.network.public_subnets
}

module "dns" {
  source = "./modules/dns"

  domain = var.domain
  alb_dns_name = module.alb.dns_name
}