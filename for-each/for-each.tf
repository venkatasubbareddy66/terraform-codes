/*provider "aws" {
  region     = "ap-south-1"
  
}

resource "aws_iam_user" "iam" {
  for_each = toset( ["user-01","user-02", "user-03"] )
  name     = each.key
}
*/