resource "aws_instance" "dev" {
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    key_name = "mykeypair"
    associate_public_ip_address = true
  
}