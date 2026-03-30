module "ec2" {
  source            = "../../modules/ec2"
  subnet_id         = module.vpc.public_subnets[0]
  security_group_id = module.security.ec2_sg
  instance_profile  = module.security.instance_profile
  db_host           = module.rds.db_host
  db_password       = var.db_password
  tags              = local.tags
}