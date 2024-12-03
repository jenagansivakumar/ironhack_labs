terraform {
  backend "s3" {
    bucket = "jenagansivakumar-s3-bucket"
    key = "terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "statelock"
  }
}