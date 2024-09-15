terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.51.0"
    }
  }

  required_version = ">= 0.15"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "my_bucket" {
  name     = "vijayanand_td_15092024"  # Ensure this name is globally unique
  location = var.region
  storage_class = "STANDARD"
}
