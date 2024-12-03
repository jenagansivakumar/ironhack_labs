variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c76bd4bd302b30ec" 
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ec2_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "jena-payroll-ec2"
}

variable "dynamodb_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "jena-payroll-table"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "jena-payroll-s3-bucket"
}
