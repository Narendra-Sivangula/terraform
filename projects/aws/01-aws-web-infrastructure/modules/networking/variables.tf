variable "name_prefix" {
  description = "Prefix used for naming network resources"
  type        = string
}

variable "common_tags" {
  description = "Common tags applied to networking resources"
  type        = map(string)
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "Public subnets to create"

  type = map(object({
    cidr = string
    az   = string
  }))
}