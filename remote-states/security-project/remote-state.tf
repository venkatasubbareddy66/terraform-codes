data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "subbu-backend"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
    }
  }