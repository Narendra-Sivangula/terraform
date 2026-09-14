variable "name_prefix" {
  description = "Prefix used for naming security resources"
  type        = string
}

variable "common_tags" {
  description = "Common tags applied to security resources"
  type        = map(string)
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to ssh into the web server"
  type        = string
}