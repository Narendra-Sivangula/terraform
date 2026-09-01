output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "account_arn" {
  value = data.aws_caller_identity.current.arn
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_name" {
  value = aws_vpc.main.tags_all
}

output "region" {
  value = var.aws_region
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = {
    for key, subnet in aws_subnet.public :
    key => subnet.id
  }
}

output "gateway" {
  value = aws_internet_gateway.main.tags_all
}

output "web_security_group_id" {
  description = "Security Group ID for the web server"
  value       = aws_security_group.web.id
}

output "web_server_public_ip" {
  description = "Public IP address of web server"
  value       = aws_instance.web.public_ip
}

output "web_server_public_dns" {
  description = "Public DNS of web server"
  value       = aws_instance.web.public_dns
}