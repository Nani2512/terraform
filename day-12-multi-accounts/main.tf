provider "aws" {
    profile = "default"
    alias = "default"
}

provider "aws" {
    profile = "secound-account"
    alias = "secound"
    
  
}

resource "aws_s3_bucket" "name" {
    bucket = "my-nari-badavath-buckeet"
    provider = aws.secound
  
}
resource "aws_s3_bucket" "test" {
    bucket = "my-nani-naresh-buckett"
  
}