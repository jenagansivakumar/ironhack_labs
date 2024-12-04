resource "aws_instance" "payroll_ec2" {
  ami = var.ec2_ami
  instance_type = var.ec_instance
    tags = {
      Name = "jena-ec2"
    }
}