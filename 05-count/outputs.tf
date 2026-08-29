output "created_buckets" {
  value = aws_s3_bucket.count_bucket[*].bucket
}