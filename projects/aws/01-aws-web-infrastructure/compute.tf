data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  subnet_id              = module.networking.public_subnet_ids["public_1"]
  vpc_security_group_ids = [module.security.security_group_id]

  user_data = <<-EOF
                #!/bin/bash
                dnf update -y
                dnf install -y nginx
                systemctl enable nginx
                systemctl start nginx
                EOF

  iam_instance_profile = module.iam.instance_profile_name
  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-web-server"
  })
}