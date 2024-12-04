resource "aws_vpc" "jena-foreach-vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "jena-foreach-subnet" {
  vpc_id                  = aws_vpc.jena-foreach-vpc.id
  cidr_block              = each.value.cidr_block
  map_public_ip_on_launch = each.value.map_public_ip_on_launch
  availability_zone       = each.value.availability_zone
  tags = {
    Name = each.key
  }

  for_each = var.subnets
}