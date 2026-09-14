moved {
  from = aws_vpc.main
  to   = module.networking.aws_vpc.main
}

moved {
  from = aws_subnet.public["public_1"]
  to   = module.networking.aws_subnet.public["public_1"]
}

moved {
  from = aws_subnet.public["public_2"]
  to   = module.networking.aws_subnet.public["public_2"]
}

moved {
  from = aws_internet_gateway.main
  to   = module.networking.aws_internet_gateway.main
}

moved {
  from = aws_route_table.public
  to   = module.networking.aws_route_table.public
}

moved {
  from = aws_route_table_association.public["public_1"]
  to   = module.networking.aws_route_table_association.public["public_1"]
}

moved {
  from = aws_route_table_association.public["public_2"]
  to   = module.networking.aws_route_table_association.public["public_2"]
}

moved {
  from = aws_security_group.web
  to   = module.security.aws_security_group.web
}

moved {
  from = aws_iam_instance_profile.ec2
  to   = module.iam.aws_iam_instance_profile.ec2
}

moved {
  from = aws_iam_role.ec2
  to   = module.iam.aws_iam_role.ec2
}

moved {
  from = aws_iam_role_policy.ec2-s3-role
  to   = module.iam.aws_iam_role_policy.ec2-s3-role
}