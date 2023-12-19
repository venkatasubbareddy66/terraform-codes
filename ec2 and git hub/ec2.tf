provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAUK2QS6DO2QD7O4ER"
  secret_key = "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"
}


resource "aws_instance" "terraform" {
    ami = "ami-02a2af70a66af6dfb"
    instance_type = "t2.micro"

    tags = {
        Name = "terrec2"
    }
}
