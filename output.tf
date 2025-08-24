output "Ec2_instnace_ip_address" {
  value = aws_instance.my_instance.public_ip
}

output "region" {
  value = aws_instance.my_instance.instance_type
}

output "S3" {
  value = aws_s3_bucket.first_bucket.bucket
}