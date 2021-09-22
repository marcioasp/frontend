provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "foxnet-tf-teste"
    key    = "ec2-frontend.tfstate"
    region = "sa-east-1"
  }
}