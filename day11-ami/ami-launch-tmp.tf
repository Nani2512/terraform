#created ec2 instance using day1 folder and from that ec2 instance id only i have created image for ami
module "ami" {
  source = "../day1"

}
resource "aws_ami_from_instance" "name" {
  name               = "test-ami"
  source_instance_id = "i-0ff0dfeb2d1341ea5"
  depends_on         = [module.ami]


}
resource "aws_launch_template" "LT" {
  name = "my-launch-template"
  iam_instance_profile {
    name = "test"

  }
  image_id                             = aws_ami_from_instance.name.id
  instance_initiated_shutdown_behavior = "terminate"
  instance_type                        = var.type
  key_name                             = var.key
  tags = {
    Name = "launch template"
  }
  depends_on = [ aws_ami_from_instance.name ]
}