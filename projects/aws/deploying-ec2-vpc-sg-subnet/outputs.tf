output "instance_id" {
  value = aws_instance.web_server.id
}

output "instance_private_ip" {
  value = aws_instance.web_server.private_ip
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}