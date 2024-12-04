variable "ec2_instance_type" {
  description = "This is the type of EC2 instance"
  default     = "t2.micro"
  type        = string
}

variable "ec2_ami_id" {
  description = "This is the AMI id of the EC2 "
  default     = "ami-0c76bd4bd302b30ec"
  type        = string
}

variable "ec2_names" {
  description = "This is the name of the EC2 instance"
  type        = set(string)
}