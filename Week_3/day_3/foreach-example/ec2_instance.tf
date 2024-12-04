resource "aws_instance" "foreach-instance" {
  ami           = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  tags = {
    "Name" = each.value
    "env"  = "dev"
  }
  for_each = var.ec2_names
}