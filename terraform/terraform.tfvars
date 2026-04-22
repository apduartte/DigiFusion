environment = "dev"

vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
domain_name          = "n8n.digifusion.com.br"

ami_id        = "ami-02dfbd4ff395f2a1b"
instance_type = "t3.micro"

key_name                  = null
ssm_instance_profile_name = "role-acesso-ssm-digifusion"

tags = {
  Project     = "DigiFusion"
  Environment = "dev"
  Owner       = "ana"
}
