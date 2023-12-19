provider "aws" {
  region = "ap-south-1"
}

locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "backend"
  }
}
resource "aws_instance" "dev" {

    ami = "ami-02a2af70a66af6dfb"
    instance_type = "t2.micro"
    tags = local.common_tags
    
  
}

resource "aws_instance" "prod" {

    ami = "ami-02a2af70a66af6dfb"
    instance_type = "t2.small"
    tags = local.common_tags
    
    
  
}