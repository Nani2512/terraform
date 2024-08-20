variable "ami" {
  description = "ami id "
  type = string
  default = "ami-066784287e358dad1"
}
variable "type" {
  description = "instance type"
  type = string
  default = "t2.micro"
}
variable "key" {
  description = "keypair name"
  type = string
  default = "mykeypair"
}
variable "region" {
  description = "region name us"
  type = string
  default = "us-east-1"
}