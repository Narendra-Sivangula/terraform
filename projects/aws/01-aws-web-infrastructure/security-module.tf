module "security" {
  source           = "./modules/security"
  name_prefix      = local.name_prefix
  common_tags      = local.common_tags
  vpc_id           = module.networking.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr
}