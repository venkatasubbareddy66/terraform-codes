provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0287a05f0ef0e9d9a" #ubuntu ami id 
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }


     lifecycle {
        create_before_destroy = true
    }
}