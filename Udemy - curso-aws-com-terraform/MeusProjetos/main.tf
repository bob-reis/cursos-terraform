terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
  /**
  backend "s3" {
    bucket  = "tfstate-260212445023"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
  **/
}

provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {
}