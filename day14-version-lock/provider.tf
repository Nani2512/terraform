terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = "4.20.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
  
}
#version between this values
terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = ">=4.10.0,<5.0.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
  
}