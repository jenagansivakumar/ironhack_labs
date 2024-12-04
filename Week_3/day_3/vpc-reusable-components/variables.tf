variable "subnets" {
  type = object({
    jena_public_subnet = object({

      cidr_block              = string
      map_public_ip_on_launch = bool
      availability_zone       = string
    })
    jena_private_subnet = object({
      cidr_block              = string
      map_public_ip_on_launch = bool
      availability_zone       = string
    })
  })
}

variable "vpc_cidr_block" {
  type = string
}
