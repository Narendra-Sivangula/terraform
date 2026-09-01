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

# --------- INTERNET GATEWAY ------------
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-igw"
  })
}

# ---------- ROUTE TABLE --------------
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    gateway_id = aws_internet_gateway.main.id
    cidr_block = "0.0.0.0/0"
  }
  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-rt"
  })
}

# --- Associate public subnets with public route tables -----
resource "aws_route_table_association" "public" {
  for_each       = aws_subnet.public
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}