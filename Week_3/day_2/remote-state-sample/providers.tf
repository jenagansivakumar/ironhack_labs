terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      
      }
    }
  backend "s3" {
    bucket         = "jenagan-sivakumar-s3-bucket"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "statelock"
  }
}