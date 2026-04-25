terraform {
  backend "s3" {
    bucket = "n8n-terraform-state-us-east-1"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}