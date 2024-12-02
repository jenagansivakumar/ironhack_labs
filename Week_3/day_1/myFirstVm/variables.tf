variable "ami_image_name" {
  description = "This is a variable for the AMI image"
  type = string
  default = "ami-0c76bd4bd302b30ecd"
}

variable "instance_type" {
    description = "This is a variable for the instance type"
    type = string
    default = "t2.micro"
  
}