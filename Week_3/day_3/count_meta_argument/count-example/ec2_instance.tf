resource "aws_instance" "jena_ec2_instance" {
  count         = 4
  ami           = "ami-0c76bd4bd302b30ec"
  instance_type = var.instance_type
  tags = {
    Name = "Instance ${count.index + 1}"
  }
}