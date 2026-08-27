terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "test"
  secret_key = "test"

  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  endpoints {
    s3 = "http://localhost:4566"
  }
  s3_use_path_style = true

}

locals {
  project     = "terraform-learning"
  bucket_name = "nani-${var.environment}-lesson03-bucket"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = local.bucket_name
}
