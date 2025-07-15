provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 6
ami = "ami-0a1235697f4afa8a4"
instance_type = "t2.medium"
key_name = "pranukeypair"
vpc_security_group_ids = ["sg-02bedbd208d6dc4f8"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server","test-1","test-2"]
}
