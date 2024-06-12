provider "aws" {
  region = local.region
}

terraform {
  required_version = ">= 1.0"


  backend "s3" {
      bucket = "duynh-terraform-tfstate"
      key = "global/s3/terraform.tfstate"
      region = "ap-southeast-1"
      encrypt        = true
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49"
    }
  }
}
