
variable "aws_region" {}

variable "ami" {}

variable "instance_subnet_id" {
  
}

variable "key_name" {
  
}

variable "env" {
  
}


variable "instance_type" {
    
    type = "map"
    default = {

        dev = "t2.micro",
        prod = "t2.medium"
    }
}

variable "tag_name" {
  
}

variable "vpc_id" {
  
}





