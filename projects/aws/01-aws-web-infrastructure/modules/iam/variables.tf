variable "name_prefix" {
  description = "Prefix name for resources"
  type        = string
}

variable "common_tags" {
  description = "Common tags for resources"
  type        = map(string)
}

variable "s3_bucket_arn" {
  description = "ARN of S3 bucket"
  type        = string
}