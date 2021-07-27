provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

#### S3 Bucket Terraform ####

resource "aws_s3_bucket" "bucket" {
  bucket = "today-is-tuesday-27th-july"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
