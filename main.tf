terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.73.0"
    }
  }
}

provider "aws" {
  region     = "eu-north-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-youssef-unique-2026"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
