resource "aws_instance" "name" {
    ami =var.ami
    instance_type =var.type
    key_name =var.key
    availability_zone = "us-east-1b"
tags={
Name ="my-ec2-instance"
}
  
}
