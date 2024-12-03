resource "aws_instance" "payroll_ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.ec2_name
  }
}

resource "aws_dynamodb_table" "payroll_table" {
  name = var.dynamodb_name
  hash_key = "ID"
  attribute {
    name = "ID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}

resource "aws_s3_bucket" "payroll_s3" {
  bucket = var.s3_bucket_name
  tags = {
    Name = var.s3_bucket_name
  }
}