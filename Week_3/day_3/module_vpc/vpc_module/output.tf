output "vpc_id" {
  value =  aws_vpc.jena-vpc.id
}

output "subnet_id" {
  value = aws_subnet.aws_subnet.id
}