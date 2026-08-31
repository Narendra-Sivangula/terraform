resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = merge(local.common_tags,
    {
      Name = "${local.name_prefix}-vpc"
  })
}

# --------- SUBNET RESOURCE -------------
resource "aws_subnet" "public" {
  for_each          = var.public_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  map_public_ip_on_launch = true

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-${each.key}"
    Type = "Public"
  })
}