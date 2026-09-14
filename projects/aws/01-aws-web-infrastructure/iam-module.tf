module "iam" {
  source        = "./modules/iam"
  name_prefix   = local.name_prefix
  common_tags   = local.common_tags
  s3_bucket_arn = aws_s3_bucket.app.arn
}