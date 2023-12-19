terraform {
  backend "s3" {
    bucket = "my--backend"
    key    = "statelock/terraform.tfstate"
    region = "ap-south-1"
  //  dynamodb_table = "state-lock"
  }
}








resource "time_sleep" "wait_200_seconds" {
  
  create_duration = "200s"
}