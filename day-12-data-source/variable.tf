variable "ami" {
  type    = string
  default = "ami-066784287e358dad1"

}
variable "type" {
  type    = string
  default = "t2.micro"

}
variable "key" {
  type    = string
  default = "mykeypair"


}
variable "region" {
  type    = string
  default = "us-east-1"

}