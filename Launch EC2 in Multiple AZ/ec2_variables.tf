
variable "aws_region" {}

variable "ami" {}

variable "key_name" {
  
}

variable "env" {
  
}


variable "instance_type" {
    
type = map(string)
    default = {

        dev = "t2.micro",
        prod = "t2.medium"
    }
}

variable "tag_name" {
  
}

variable "availability_zone" {
    type = list(string)
  
}

variable "security_group_values" {
    type = list(string)
  
}



