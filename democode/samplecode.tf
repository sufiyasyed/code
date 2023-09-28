resource "aws_instance" "ec2_example" {
    ami = "ami-0f845a2bba44d24b2"
    instance_type = var.instance_type
    count = var.instance_count
    tags = {
        Name = "Terraform EC2"
    }
}





variable "instance_type" {
description = "provide instance type" 
type = string
default = "t2.medium"   
}

variable "instance_count" {
description = "provide instance count" 
type = string
default = 5   
}

variable "Name" {
description = "provide instance name" 
type = string
default = "test-variable"  
}








