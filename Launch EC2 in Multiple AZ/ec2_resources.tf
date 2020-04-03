resource "aws_instance" "my_instance" {
  count                       = "${length(var.availability_zone)}"
  ami                         = var.ami
  availability_zone           = "${element(var.availability_zone, count.index)}"
  key_name                    = var.key_name
  vpc_security_group_ids             = var.security_group_values 
  instance_type               = "${lookup(var.instance_type,var.env)}"
  associate_public_ip_address = true


tags  = { 
  Name = "${var.tag_name}-${count.index + 1}"
 } 

}
