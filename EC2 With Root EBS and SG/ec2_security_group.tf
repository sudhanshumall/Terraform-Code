resource "aws_security_group" "allow_SSH" {
  name        = var.tag_name
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  tags  = { Name = var.tag_name } 

  ingress {
    # All ports allowed, ake sure to change this 
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        ipv6_cidr_blocks = ["::/0"]
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}