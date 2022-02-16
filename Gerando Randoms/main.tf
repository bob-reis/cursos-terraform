// inicio
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.5.0"
    }
  }
}

provider "google" {
  project = "web-apto-vc"
  zone    = "southamerica-east1-c"
  region  = "southamerica-west1"
}
