terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

locals {
  project_name = "Terraform Learning"

  environments        = ["dev", "prod", "stage", "monitoring"]
  server_names        = ["web", "app", "db"]
  environment_details = { dev = "Development", prod = "Production" }
  common_tags         = { Project = "Terraform Learning", Owner = "Nani" }
  environment_tags    = { Environment = "dev" }
}

# length()
output "number_of_environments" {
  value = length(local.environments)
}

# upper()
output "project_uppercase" {
  value = upper(local.project_name)
}

# lower()
output "project_lowercase" {
  value = lower(local.project_name)
}

# join()
output "servers_joined" {
  value = join("-", local.server_names)
}

# split()
output "servers_split" {
  value = split("-", "web-app-db")
}

# lookup()
output "production_environment" {
  value = lookup(local.environment_details, "stage", "Not Found")
}

# merge()
output "all_tags" {
  value = merge(local.common_tags, local.environment_tags)
}