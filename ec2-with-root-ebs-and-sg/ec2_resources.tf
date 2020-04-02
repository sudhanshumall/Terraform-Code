resource "aws_instance" "my_instance" {
  ami                         = var.ami
  availability_zone           = var.availability_zone
  //user_data_base64            = "${var.base64_userdata}"
  security_groups             = [ aws_security_group.allow_SSH.id ]
  subnet_id                   = var.instance_subnet_id
  key_name                    = var.key_name
  instance_type               = "${lookup(var.instance_type,var.env)}"
  associate_public_ip_address = true


tags  = { Name = var.tag_name } 

root_block_device {
volume_type = "gp2"
volume_size = "10"
delete_on_termination = "true"
}

provisioner "local-exec" {
    command = "echo ${aws_instance.my_instance.public_ip} > public_ip.txt"
  }

provisioner "local-exec" {
    command = "echo ${aws_instance.my_instance.private_ip} > private_ip.txt"
  }

}
