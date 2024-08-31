resource "aws_iam_user" "multiple" {
  count = length(var.iam-user)
  name  = var.iam-user[count.index]

}