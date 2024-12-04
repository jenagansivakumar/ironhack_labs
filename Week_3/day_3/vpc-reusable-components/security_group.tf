resource "aws_security_group" "allow_different_traffic" {

for_each = var.inbound_rules

name = each.key
description = "Allow different types of inbound traffic"
vpc_id = aws_vpc.jena-foreach-vpc.id

  dynamic "ingress" {
    for_each = each.value
    content {
      from_port   = each.value.from_port
      to_port     = each.value.to_port
      protocol    = each.value.protocol
      cidr_blocks = each.value.cidr_blocks
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "jena_allow_tls"
  }
}