#store stateflie in s3 bucket
resource "aws_s3_bucket" "test" {
  bucket = "mynareshnaninewbucket"

}
#locking provision for statefile
resource "aws_dynamodb_table" "dynamobd-ferraform-state-lockfile" {
  name           = "terraform-state-lock-dynmo"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"

  }
}
