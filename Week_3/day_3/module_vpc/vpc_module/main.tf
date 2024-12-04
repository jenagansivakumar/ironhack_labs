resource "aws_vpc" "jena-vpc" {
  cidr_block = var.cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "aws_subnet" {
  vpc_id = aws_vpc.jena-vpc.id
  cidr_block = cidrsubnet(var.cidr_block, 8,0)
}