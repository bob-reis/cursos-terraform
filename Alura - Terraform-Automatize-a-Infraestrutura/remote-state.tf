/*
terraform {
  backend "remote" {
      hostname = "app.terraform.io"
      organization = "Lab-Bob"

      workspaces {
          name = "aws-bobreis"
      }
  }
}
*/