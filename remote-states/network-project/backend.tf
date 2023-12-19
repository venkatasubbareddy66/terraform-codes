terraform {
  backend "s3" {
    bucket = "subbu-backend"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
  }
}