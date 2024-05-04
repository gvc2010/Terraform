terraform {
  required_version = ">1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">4.1.0"
    }
  }

  backend "s3" {
    bucket = "write your bkt"
    region = "us-east-1"
    key = "tfstates/secret-manager/terraform.tfstate"



  }
}

provider "aws" {
  region     = local.aws_region
  access_key = var.access_key
  secret_key = var.secret_key


}