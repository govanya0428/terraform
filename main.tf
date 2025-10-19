provider "aws" {
region = "us-west-2"  
}
resource "aws_instance" "example" {
  ami           = "ami-066eb5725566530f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "windows-example-instance"
  }
}
resource "aws_s3_bucket" "MyBucket" {
  bucket = "my-unique-bucket-name-123456"
  acl    = "private"
  
}
