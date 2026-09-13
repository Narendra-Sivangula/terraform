resource "aws_s3_bucket" "app" {
  bucket = "${local.name_prefix}-artifacts-${data.aws_caller_identity.current.account_id}"

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-artifacts"
  })
}