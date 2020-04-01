resource "aws_instance" "my_instance" {
  ami                         = var.ami
  availability_zone           = var.availability_zone
  //user_data_base64            = "${var.base64_userdata}"
  security_groups             = [ aws_security_group.allow_ssh.id ]
  subnet_id                   = var.instance_subnet_id
  key_name                    = var.key_name
  instance_type               = var.instance_type
  associate_public_ip_address = true


root_block_device {
volume_type = "gp2"
volume_size = "10"
delete_on_termination = "true"
}

}
