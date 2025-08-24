#Multiple region 
provider "aws" {
  alias = "Mumbai"
  region = "ap-south-1"
}

provider "aws" {
  alias = "verginia"
  region = "us-east-1"
}
resource "aws_s3_bucket" "first_bucket" {
  bucket = var.bucket_value
  provider = aws.verginia
}

resource "aws_instance" "my_instance" {
  ami           = var.ami_value
  instance_type = var.instance_type_value
  tags = {
    Name = "Myinstance"
  }
  provider = aws.Mumbai
}