variable "ingress" {
  default = [
    {
      form_port  = 80
      to_port    = 80
      protocal   = "tcp"
      cidr_block = ["0.0.0.0/0"]
    },
    {
      form_port  = 22
      to_port    = 22
      protocal   = "tcp"
      cidr_block = ["0.0.0.0/0"]

    }
  ]
}
variable "engress" {
  default = [
    {
      form_port  = 0
      to_port    = 0
      protocal   = "tcp"
      cidr_block = ["0.0.0.0/0"]
    }
  ]
}