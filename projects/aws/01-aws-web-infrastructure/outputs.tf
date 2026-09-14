output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "account_arn" {
  value = data.aws_caller_identity.current.arn
}


output "region" {
  value = var.aws_region
}

output "web_security_group_id" {
  description = "Security Group ID for the web server"
  value       = module.security.security_group_id
}

output "web_server_public_ip" {
  description = "Public IP address of web server"
  value       = aws_instance.web.public_ip
}

output "web_server_public_dns" {
  description = "Public DNS of web server"
  value       = aws_instance.web.public_dns
}