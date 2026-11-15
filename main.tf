terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.73.0"
    }
  }
}

provider "aws" {
  region  = "eu-north-1"
  profile = "youssef-profile"
  # profile = "default"
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  depends_on = [aws_subnet.subnet1, aws_subnet.subnet2]
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
