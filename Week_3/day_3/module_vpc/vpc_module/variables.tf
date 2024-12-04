variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
  default = "jena-vpc-week-2-day-3"
}

variable "availability_zone" {
  type = string
  default = "eu-west-2"
}

variable "number_of_subnets" {
    type = number
  default = 2
}