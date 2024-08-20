output "bucketname" {
    description = "printing name of my bucket"
  value = aws_s3_bucket.name.bucket
}