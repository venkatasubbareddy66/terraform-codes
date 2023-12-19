
provider "aws" {
    region = "ap-south-1"
  
}

variable "elb_names" {
    type = list
    default = ["dev-loadbaalancer", "stage-loadbalancer","prod-loadbalancer"]
  
}

resource "aws_iam_user" "lb" {
    name = var.elb_names[count.index]
    count = 3
    path = "/system/"

}
   
  
// if you want to create multiple instance without count.index

/*resource "aws_instance" "myec2" {

    ami = "ami-02a2af70a66af6dfb"
    instance_type = "t2.micro"
    count = 3
  
}
*/

