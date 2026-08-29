terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region                      = "ap-south-2"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  endpoints {
    s3 = "http://localhost:4566"
  }
  s3_use_path_style = true
}

resource "aws_s3_bucket" "count_bucket" {
  count  = 3
  bucket = "narendra-lesson-05-count-${count.index}"
}