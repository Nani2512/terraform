resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.type
  key_name      = var.key
  tags = {
    Name = "my-ec2-instance"
  }
}

data "aws_instance" "name" {
  instance_id = "i-00a07dcc9239aeba5"

  filter {
    name   = "tag:Name"
    values = ["my-ec2-instance"]

  }
}