resource "aws_vpc" "jena_vpc" {
  cidr_block =  var.cidr_block
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name
  }
}