output "bucket_id" {
  value = data.aws_s3_bucket.existing_bucket.id
}

output "bucket_arn" {
  value = data.aws_s3_bucket.existing_bucket.arn
}