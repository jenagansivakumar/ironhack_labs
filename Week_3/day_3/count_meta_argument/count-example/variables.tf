variable "instance_type" {
  description = "This is the type of the instance"
  type        = string
  default     = "t2.micro"
}

variable "ec2_count" {
  type    = number
  default = 4
}

variable "ec2_names" {
  type    = list(string)
  default = ["jena-instance-1", "jena-instance-2", "jena-instance-3", "jena-instance-4"]
}