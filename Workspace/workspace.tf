provider "aws" {
  region = "ap-south-1"
}




resource "aws_instance" "myec2" {
  ami           = "ami-02a2af70a66af6dfb"
  instance_type = lookup(var.instance_type,terraform.workspace)
}


variable "instance_type" {
  type = map



default = {
    default = "t2.nano"
    dev = "t2.micro"
    prod = "t2.large"
}
}


