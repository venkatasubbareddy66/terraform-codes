provider "aws" {
  
}



resource "aws_instance" "myec2" {

    ami = "ami-02a2af70a66af6dfb"
    instance_type = var.list[1]
  
}

variable "list" {
  type = list
  default = ["t2.small","t2.medium"]
}


variable "types" {
    type = map
  default = {
    ap-south-1 = "t2.micro"
    us-east-2 = "t2.nano"
  }
}