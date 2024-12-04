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
  default = "10.0.0.0/16"
  type    = string
}

variable "inbound_rules" {
  type = map(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}