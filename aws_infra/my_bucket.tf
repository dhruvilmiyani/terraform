resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my_env}-aws-terraform-bucket-0152"
  tags = {
    Name = "${var.my_env}-aws-terraform-bucket-0152"
    enviroment = var.my_env
  }
}