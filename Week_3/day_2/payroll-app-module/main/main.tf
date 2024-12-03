provider "aws" {
  alias  = "london"
  region = "eu-west-2"
}

provider "aws" {
  alias  = "paris"
  region = "eu-west-3"
}

module "payroll_app_uk" {
  source = "../modules/payroll-app"
  providers = {
    aws = aws.london
  }
  ami_id         = "ami-0c76bd4bd302b30ec"
  instance_type  = "t2.micro"
  ec2_name       = "jena-payroll-ec2-uk"
  dynamodb_name  = "jena-payroll-table-uk"
  s3_bucket_name = "jena-payroll-s3-bucket-uk"
}

module "payroll_app_paris" {
  source = "../modules/payroll-app"
  providers = {
    aws = aws.paris
  }
  ami_id         = "ami-03216a20ecc5d72ee"
  instance_type  = "t2.micro"
  ec2_name       = "jena-payroll-ec2-paris"
  dynamodb_name  = "jena-payroll-table-paris"
  s3_bucket_name = "jena-payroll-s3-bucket-paris"
}
