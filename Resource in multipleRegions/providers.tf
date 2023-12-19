provider "aws" {
  region = "ap-south-1"
}


provider "aws" {
    alias = "ohio"
  region = "us-east-1"
  
}