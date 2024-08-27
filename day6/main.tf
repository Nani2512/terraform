resource "aws_instance" "name" {
    ami="ami-066784287e358dad1"
instance_type = "t2.nano"
availability_zone = "us-east-1a"
key_name = "mykeypair"
tags = {
  Name=  "dev-7"
}

}
