output "instance_profile_name" {
  description = "Name of EC2 instance profile"
  value       = aws_iam_instance_profile.ec2.name
}

output "role_name" {
  description = "Role Name of EC2 IAM"
  value       = aws_iam_role.ec2.name
}

output "role_arn" {
  description = "ARN of EC2 IAM role"
  value       = aws_iam_role.ec2.arn
}