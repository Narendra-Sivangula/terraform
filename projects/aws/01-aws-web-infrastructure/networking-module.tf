module "networking" {
  source      = "./modules/networking"
  name_prefix = local.name_prefix
  common_tags = local.common_tags

  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets

}