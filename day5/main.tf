resource "aws_instance" "name" {
    ami="ami-066784287e358dad1"
instance_type = "t2.micro"
key_name = "mykeypair"
availability_zone = "us-east-1a"

tags = {
  Name=  "backendtest"
}

}
resource "aws_s3_bucket" "name" {
  bucket = "newnaribucketaws"
  
}