resource "aws_security_group" "dynamic" {
  name = "example-sg"
  dynamic "ingress" {
    for_each = var.ingress
    content {
      from_port   = var.ingress.form_port
      to_port     = var.ingress.value.to_port
      protocol    = var.ingress.value.protocal
      cidr_blocks = var.ingress.value.cider_blocks

    }

  }

  dynamic "egress" {
    for_each = var.engress
    content {

      from_port   = var.engress.value.form_port
      to_port     = var.engress.to_port
      protocol    = var.engress.to_port
      cidr_blocks = var.engress.cider_blocks
    }

  }
}