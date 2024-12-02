variable "cidr_block" {
    description = "this gives the CIDR block value"
    type = string
    default = "10.0.0.0/16"

}

variable "vpc_name" {
  description = "this is the name of the VPC"
  type = string
  default = "jena-vpc"
}

variable "region" {
  description = "this is where the VPC will be hosted"
  type = string
  default = "eu-west-2"
}

variable "public_subnet_cidr" {
  description = "this is for the public subnet cidr"
  type = string
  default = "10.1.0.0/24"
}

variable "private_subnet_cidr" {
  description = "this is for the private subnet cidr"
  type = string
  default = "10.2.0.0/24"
}

variable "availability_zone" {
  description = "this defines the availability zone"
  type = map(string)
  default = {
    public_subnet_az = eu-west-2a
    private_subnet_az = eu-west-2b
  }
}

variable "ami_image" {
  description = "this defines the ami image number"
  type = string
}

variable "instance_type" {
  description = "this defines the instance type"
  type = string
  default = "t2.micro"
}