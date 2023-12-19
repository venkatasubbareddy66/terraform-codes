terraform {
  cloud {
    organization = "myterraform1-org"

    workspaces {
      name = "remote-operations"
    }
  }
}