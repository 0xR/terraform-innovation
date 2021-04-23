terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  project = "terraform-innovation"
  region  = "europe-west4"
  zone    = "europe-west4-a"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
