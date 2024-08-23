terraform {
  backend "s3" {
    bucket = "newnaribucketaws"
    key="nani/terraform.tfstate"
    region = "us-east-1"

  }
}