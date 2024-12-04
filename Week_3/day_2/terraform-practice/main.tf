provider "aws" {
  alias  = "london"
  region = "eu-west-2"
}

resource "aws_instance" "payroll_ec2" {
  ami           = "ami-0c76bd4bd302b30ec"
  instance_type = var.ec2_instance
  tags = {
    Name = "jena-payroll-test"
  }
  provider = aws.london
}