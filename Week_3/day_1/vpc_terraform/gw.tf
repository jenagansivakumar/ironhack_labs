resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.jena_vpc.id
  tags = {
    Name="jena_gw"
  }
}