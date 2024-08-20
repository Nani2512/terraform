#create a s3 bucket
resource "aws_s3_bucket" "name" {
    bucket = var.bucketname
    
}
#upload file into s3 bucket
resource "aws_s3_object" "name" {
bucket =var.bucketname
key="nani/classlink.txt"
source = "C:/Users/Lenovo/Desktop/classlink.txt"

}