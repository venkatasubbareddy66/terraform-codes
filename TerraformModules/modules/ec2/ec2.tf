resource "aws_instance" "terraform" {
    ami = "ami-02a2af70a66af6dfb"
    instance_type = var.instance_type

    tags = {
        Name = "terrec2"
    }
}