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