


variable "vpc_id" {
    description = "VPC to connect to, used for a security group"
    type = "string"
}

variable "instance_type" {
    description = "VPC to connect to, used for a security group"
    type = "string"
    default = "t2.micro"
}

variable "ami" {
    description = "Defaults to Amazon Linux 2 ami for us-east-2"
    default = "ami-0d8f6eb4f641ef691" 
}

variable "key_name" {
    description = "aws key pair name"
}

variable "prefix" {
    description = "a prefix for resources to be identified"
}


// 
// Tags 
//

variable "name" {
    default = "generic-ec2"
}

variable "project" {
    default = "aws-cert"
}


variable "owner" {
    default = "icullinane"
}


variable "environment" {
    default = "dev"
}

