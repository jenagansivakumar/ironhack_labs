variable "ec2_ami" {
  default = ""
  type = string
}

variable "ec_instance" {
  default = "t2.micro"
  type = "string"
}

variable "ec2_name" {
  default = "jena_ec2"
}

variable "region" {
  type = string
}