resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.jena_vpc.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone["public_subnet_az"]
  tags = {
    Name = "jena_public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.jena_vpc.id
  map_public_ip_on_launch = false
  availability_zone = var.availability_zone["private_subnet_az"]
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = "jena_private_subnet"
  }

}