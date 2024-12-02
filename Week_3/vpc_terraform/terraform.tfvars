region = "us-east-1"

availability_zone = {
  private_subnet_az = "us-east-1b"
  public_subnet_az  = "us-east-1a"
}

cidr_block = "10.0.0.0/16"

vpc_name = "myVpc-saurabh"

public_subnet_cidr_block = "10.0.1.0/24"

private_subnet_cidr_block = "10.0.2.0/24"

ami_image = "ami-07d9b9ddc6cd8dd30"

instance_type = "t2.micro"

