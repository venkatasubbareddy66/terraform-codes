terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}



resource "aws_instance" "web" {
    ami = "ami-02a2af70a66af6dfb"

  instance_type = "t2.micro"
}

