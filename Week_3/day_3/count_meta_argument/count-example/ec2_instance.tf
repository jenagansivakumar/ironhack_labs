resource "aws_instance" "jena_ec2_instance" {
  count         = var.ec2_count
  ami           = "ami-0c76bd4bd302b30ec"
  instance_type = var.instance_type
  tags = {
    Name = var.ec2_names[count.index]
  }
}