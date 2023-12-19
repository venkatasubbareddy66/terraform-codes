provider "aws" {
  region = "ap-south-1"
}


import {
  to = aws_security_group.mysg
  id = "sg-093279f2706f6a7df"
}