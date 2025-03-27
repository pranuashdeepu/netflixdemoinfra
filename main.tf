provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-076c6dbba59aa92e6"
instance_type = "t2.medium"
key_name = "pranu"
vpc_security_group_ids = ["sg-078550f19e8ad166e"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
