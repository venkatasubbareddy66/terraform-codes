

### functions.tf


provider "aws" {
  region     = var.region
 
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}
/*
variable "region" {
  default = "ap-south-1"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-0323c3dd2da7fb37d"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-001843b876406202a"
  }
}*/

resource "aws_key_pair" "subbu1-key" {
  key_name   = "subbu1-key"
  public_key = file("${path.module}/id_ed25519.pub")
}

resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   for_each = var.instance_config
   instance_type = each.value.instance_type
  
   key_name = aws_key_pair.subbu1-key.key_name
   
   
   tags = {
     Name = each.value.tags
     instance_names = each.value.instance_names

     

   }
   
}





output "timestamp" {
  value = local.time
}

