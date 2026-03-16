provider "aws" {
  region = "us-east-1"
}

data "aws_route53_zone" "main" {
  name = "seudominio.com"
}

module "acm" {
  source      = "../../modules/acm"
  domain_name = "n8n.seudominio.com"
  zone_id     = data.aws_route53_zone.main.zone_id
}

module "cloudfront" {
  source          = "../../modules/cloudfront"
  origin_domain   = "seu-alb.amazonaws.com"
  certificate_arn = module.acm.certificate_arn
  domain_name     = "n8n.seudominio.com"
}

module "route53" {
  source               = "../../modules/route53"
  zone_id              = data.aws_route53_zone.main.zone_id
  domain_name          = "n8n.seudominio.com"
  cloudfront_domain    = module.cloudfront.domain_name
  cloudfront_zone_id   = module.cloudfront.zone_id
}