provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-091dccf4e2d272bae"
instance_type = "t2.medium"
key_name = "pranu"
vpc_security_group_ids = ["sg-02b0309be0f635b9e"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
