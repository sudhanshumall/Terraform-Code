output "public_ip" {
  value = "${aws_instance.my_instance}"
}

output "private_ip" {
  value = "${aws_instance.my_instance}"
}