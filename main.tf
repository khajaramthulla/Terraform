#Multiple region 
provider "aws" {
  alias = "Mumbai"
  region = "ap-south-1"
}

#provider "aws" {
#  alias = "verginia"
#  region = "us-east-1"
#}
#resource "aws_s3_bucket" "first_bucket" {
#  bucket = var.bucket_value
#  provider = aws.verginia
#}

#resource "aws_instance" "my_instance" {
#  ami           = "ami-02d26659fd82cf299"
#  instance_type = "t2.mirco"
#  tags = {
#    Name = "Myinstance"
#  }
#  provider = aws.Mumbai
#}

#Resource creating using modules

module "EC2" {
  source = "./Modules/Ec2_instance"
  ami_value = "ami-02d26659fd82cf299"
  instance_type_value = "t2.micro"
}