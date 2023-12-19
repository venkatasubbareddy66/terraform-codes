resource "aws_instance" "myec21" {
   ami = "ami-02a2af70a66af6dfb"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec21.private_ip} >> private_ips.txt"
  }
}
