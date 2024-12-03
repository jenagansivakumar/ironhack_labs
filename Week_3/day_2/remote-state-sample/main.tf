variable "ami_image_name" {
  description = "this is a variable for the AMI image"
  type = string
  default = "value"
}

variable "instance_type" {
  default = "t2.micro"
  type = string
  description = "this is the variable for the instance type"
}

resource "aws_instance" "jena_web_server" {
  ami = var.ami_image_name
  instance_type = var.instance_type

  tags = {
    Name = "jenaWebServer"
  }
}

