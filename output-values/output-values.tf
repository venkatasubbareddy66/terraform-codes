provider "aws"{
    region = "ap-south-1"
   
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}


output  "public_ip" {
    value = aws_eip.lb
}

/*
 output  "public_ip" {
    value = "https://${aws_eip.lb.public_ip}:8080
}
*/
// if you want url 

/*
output  "public_ip" {
    value = aws_eip.lb.public_ip
}
*/
//this will give public ip


  


