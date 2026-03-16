terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "digifusion_bucket" {
  bucket = "digifusion-bucket-teste-12345"

  tags = {
    Name = "Digifusion"
    Environment = "dev"
  }
}