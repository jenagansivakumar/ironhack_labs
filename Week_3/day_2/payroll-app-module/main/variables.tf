variable "region" {
  default     = "eu-west-2"
  description = "AWS region for resources"
}

variable "ami_id" {
  default     = "ami-07d9b9ddc6cd8dd30"
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Instance type for the EC2 instance"
}
