variable "aws_region" {
  description = "AWS Region where all infrastructure is created"
  type        = string
  default     = "ap-south-2"
}

variable "project_name" {
  description = "Name of the Project"
  type        = string
  default     = "terraform-web"
}

variable "environment" {
  description = "Deployment Environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

# -------- SUBNETS ----------
variable "public_subnets" {
  description = "Public Subnets to create"
  type = map(object({
    cidr = string
    az   = string
  }))

  default = {
    public_1 = {
      cidr = "10.0.1.0/24"
      az   = "ap-south-2a"
    }

    public_2 = {
      cidr = "10.0.2.0/24"
      az   = "ap-south-2b"
    }
  }
}