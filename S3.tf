resource "aws_s3_bucket" "my-bucket" {
  bucket = "aws-terraform-bucket-0152"
  tags = {
    Name = "aws-terraform-bucket-0152"
  }
}