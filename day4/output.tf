output "publicip" {
  value     = aws_instance.name.public_ip
  sensitive = false

}
output "privateip" {
  value     = aws_instance.name.private_ip
  sensitive = true
}