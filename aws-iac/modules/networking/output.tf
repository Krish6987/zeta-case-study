output "security_group_id" {
  value       = aws_security_group.default.id
  description = "Default security group id"
}

output "public_subnet_id" {
    value       = aws_subnet.public_subnet[0].id
    description = "Public Subnet id"
}