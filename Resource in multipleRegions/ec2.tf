resource "aws_instance" "myec2" {
  ami = "ami-02a2af70a66af6dfb"
  instance_type = "t2.micro"
}


resource "aws_instance" "myec21" {
  ami = "ami-02a2af70a66af6dfb"
  instance_type = "t2.micro"
  provider = aws.ohio
}
