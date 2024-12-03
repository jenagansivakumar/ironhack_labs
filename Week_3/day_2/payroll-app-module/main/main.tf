module "payroll_app" {
  source = "../modules/payroll-app"
  ami_id = var.ami_id
  instance_type = var.instance_type
  ec2_name = "jena-payroll-ec2"
  dynamodb_name = "jena-payroll-table"
  s3_bucket_name = "jena-payroll-s3-bucket"
}