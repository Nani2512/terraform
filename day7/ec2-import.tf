resource "aws_instance" "newec2" {
  ami="ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  key_name = "mykeypair"
  tags = {
    Name="newec2"
  }
}
