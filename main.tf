provider "aws" {
    region = "us-east-1"
}

module "vpc" {
    source = "./vpc"
}

module "ec2" {
    source = "./ec2"
    ami_id = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    instance_count = 2
}