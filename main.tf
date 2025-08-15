provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "first_bucket" {
  bucket = "khajaramthulla-bucket-0786"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  tags = {
    Name = "Myinstance"
  }
}