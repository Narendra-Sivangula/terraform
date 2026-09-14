output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = {
    for name, subnet in aws_subnet.public :
    name => subnet.id
  }
}