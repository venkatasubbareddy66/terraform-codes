variable "region" {}

// variable "tags" {}


variable "ami" {}


variable "instance_config" {
type = map
default = {
instance1 = { instance_type = "t2.micro", tags = "DEV" , instance_names = "subbu1", application_name = "my-1"}
instance2 = { instance_type = "t2.micro" ,tags = "DEV", instance_names = "subbu2",  application_name = "my-2"}
}
}





