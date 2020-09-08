terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = var.region 
}

module "static-webapp" {
  source  = "app.terraform.io/thakel/s3-webapp/aws"
  version = "1.0.0"
  # insert required variables here
  name = var.name
  region = var.region
  prefix = var.prefix 
}