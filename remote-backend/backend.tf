terraform {
  backend "s3" {
    bucket = "my--backend"
    key    = "ec2/terraform.tfstate"
    region = "ap-south-1"
  }
}