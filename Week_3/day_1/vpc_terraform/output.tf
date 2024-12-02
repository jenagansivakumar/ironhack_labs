output "public_ip_address" {
  value = aws_instance.private_ec2.public_ip
}