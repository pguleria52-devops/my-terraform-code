output "vpc_id" {
  value = aws_vpc.vpc.id
  
}

output "public_subnet" {
  value = aws_subnet.public[*].id
  description = "Public subnets"
}
output "private_subnet" {
  value = aws_subnet.private[*].id
}