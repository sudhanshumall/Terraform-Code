resource "aws_instance" "my_instance" {
  ami                         = var.ami
  availability_zone           = var.availability_zone
  subnet_id                   = var.instance_subnet_id
  key_name                    = var.key_name
  instance_type               = "${lookup(var.instance_type,var.env)}"
  associate_public_ip_address = true
  count                       = var.ec2_count


tags  = { 
  Name = "${var.tag_name}-${count.index + 1}"
 } 

}
