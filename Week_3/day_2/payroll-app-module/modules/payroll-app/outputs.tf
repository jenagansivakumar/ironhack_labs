output "ec2_instance_id" {
  description = "This is the ID of the ec2 instance"
  value = aws_instance.payroll_ec2.id
}

output "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  value       = aws_dynamodb_table.payroll_table.name
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.payroll_s3.bucket
}