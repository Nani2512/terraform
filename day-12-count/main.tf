resource "aws_instance" "name" {
    ami = var.ami
    instance_type = var.type
    key_name = var.key
    count =length(var.multiple-instance)
    tags = {
      Name= var.multiple-instance[count.index]
    }
}

