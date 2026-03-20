terraform {
  backend "s3" {
    bucket         = "seu-bucket-terraform-state"
    key            = "digiFusion/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}