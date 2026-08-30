output "buckets" {
  value = [for b in aws_s3_bucket.buckets : b.bucket]
}