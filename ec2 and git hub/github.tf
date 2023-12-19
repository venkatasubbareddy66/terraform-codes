terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}

resource "github_repository" "example" {
  name        = "terrgithub"
  description = "My awesome codebase"

  visibility = "public"

}
