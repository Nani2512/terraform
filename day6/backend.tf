terraform {
  backend "s3" {
    bucket = "mynareshnaninewbucket"
    key="test/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock-dynmo"
    encrypt = true

  }
}